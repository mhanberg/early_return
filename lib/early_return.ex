defmodule EarlyReturn do
  defmacro defr(call, do: expr) do
    quote do
      def unquote(call) do
        unquote(expr)
      catch
        {:early_return, value} ->
          value

        other ->
          throw(other)
      end
    end
  end

  defmacro return(value, {:if, _, [condition]}) do
    quote do
      if unquote(condition) do
        throw({:early_return, unquote(value)})
      end
    end
  end
end
