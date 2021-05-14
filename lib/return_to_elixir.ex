defmodule ReturnToElixir do
	@moduledoc """
	This is a project made to resume my studies on the Elixir language.\n
	Most cases will be extremely redundant in the context of the language, but it's my project so I do what I want.
	"""

	@doc """
	Adds two given numbers.

	## Example

			iex> ReturnToElixir.add(1,2)
			3

	"""

	@spec add(number,number) :: number
	def add(num1,num2), do: num1 + num2

	@doc """
	Subtracts two given numbers.

	## Example

			iex> ReturnToElixir.subtract(2,1)
			1

	"""

	@spec subtract(number,number) :: number
	def subtract(num1,num2), do: num1 - num2

	@doc """
	Multiplyes two given numbers.

	## Example

			iex> ReturnToElixir.multiply(2,2)
			4

	"""

	@spec multiply(number,number) :: number
	def multiply(num1,num2), do: num1 * num2

	@doc """
	Divides two given numbers.

	## Example

			iex> ReturnToElixir.divide(9,3)
			3

	"""

	@spec divide(number,number) :: number
	def divide(num1,num2) do

		if rem(num1,num2) === 0 do
			div(num1,num2)
		else
			num1 / num2
		end

	end

end
