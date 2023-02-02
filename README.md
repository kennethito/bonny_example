# BonnyExample

Just an error repro, nothing to see here.

Steps to get to this state
1. mix new bonny_example --sup
2. Set .tool-versions
3. mix deps.get
4. mix bonny.init
5. Fix [mix.exs application mod] and [application.ex get vs get!]
6. mix test

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `bonny_example` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:bonny_example, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/bonny_example>.

