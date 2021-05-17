defmodule DiceRoller do
	@moduledoc """
	Simple dice roller.\n
	Does not support multiple dies.
	"""

	@doc """
	Declare the number of dies you wish to be rolled folowed by 'd' and the type of the die.

	##Example

			iex> DiceRoller.roll("4d6")
			{[4,2,2,5],13}

	"""

	@spec roll(String.t) :: {list,number}
	def roll(roll) do
		result = roll
							|> String.split(~r/d/i)
							|> Enum.map(fn el -> elem( Integer.parse(el), 0) end)
							|> roller()
		{result,Enum.sum(result)}
	end

	defp roller([qtd,type]) do
		cond do
			qtd > 1 ->
				roller([qtd - 1, type], [:rand.uniform(type)])
			qtd == 1 ->
				[:rand.uniform(type)]
			true ->
				[0]
		end
	end

	defp roller([qtd,type], results) do
		cond do
			qtd > 1 ->
				roller([qtd - 1, type], [:rand.uniform(type) | results])
			qtd == 1 ->
				[:rand.uniform(type) | results]
		end
	end
end
