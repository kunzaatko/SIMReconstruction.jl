using SIMReconstruction
using Documenter

DocMeta.setdocmeta!(SIMReconstruction, :DocTestSetup, :(using SIMReconstruction); recursive=true)

makedocs(;
    modules=[SIMReconstruction],
    authors="Martin Kunz <martinkunz@email.cz> and contributors",
    repo="https://github.com/kunzaatko/SIMReconstruction.jl/blob/{commit}{path}#{line}",
    sitename="SIMReconstruction.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://kunzaatko.github.io/SIMReconstruction.jl",
        edit_link="trunk",
        assets=String[]
    ),
    pages=[
        "Home" => "index.md",
        "Theory" => "pages/01_theory.md",
        "General Interface" => "pages/02_interface.md",
        "Reconstruction" => [
            "pages/03_reconstrution_algorithms.md",
            "Algorithms" => [
                "Wiener Deconvolution" => "pages/03_reconstrution_algorithms/01_wiener.md",
                "Richardson-Lucy Deconvolution" => "pages/03_reconstrution_algorithms/02_rl.md",
                "Optimization Reconstruction" => "pages/03_reconstrution_algorithms/03_opt.md",
                "Wiener Deconvolution" => "pages/03_reconstrution_algorithms/01_wiener.md",
            ]
        ],
        "References" => [
            "API" => "pages/05_apireference.md",
            "Bibliography" => "pages/06_bibliography.md"
        ]]
)

deploydocs(;
    repo="github.com/kunzaatko/SIMReconstruction.jl",
    devbranch="trunk"
)
