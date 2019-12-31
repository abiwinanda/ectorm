defmodule EctoRM.MixProject do
  use Mix.Project

  def project do
    [
      app: :ectorm,
      version: "0.0.1",
      elixir: "~> 1.9",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "EctoRM",
      source_url: "https://github.com/abiwinanda/ectorm"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto, "~> 3.3"},
      {:ex_doc, "~> 0.21", only: :dev, runtime: false},
    ]
  end

  defp description() do
    "Ecto-Relational Mapper"
  end

  defp package() do
    [
      # These are the default files included in the package
      files: ~w(lib priv .formatter.exs mix.exs README* readme* LICENSE*
                license* CHANGELOG* changelog* src),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/abiwinanda/ectorm"}
    ]
  end
end
