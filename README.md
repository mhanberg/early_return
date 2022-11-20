# EarlyReturn

Return early from a function!

Have a blursed day!

```elixir
defmodule Main do
  import EarlyReturn

  defr double_if_positive(num) do
    return "0 is not posiive or negative", if num == 0
    return "#{num} is negative", if num < 0

    num * 2
  end
end
```
