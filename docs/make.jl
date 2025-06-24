using MATH582
using Documenter

DocMeta.setdocmeta!(MATH582, :DocTestSetup, :(using MATH582); recursive=true)

makedocs(;
    modules=[MATH582],
    authors="Mohammed Alshahrani <mmogib@gmail.com> and contributors",
    sitename="MATH582.jl",
    format=Documenter.HTML(;
        canonical="https://mmogib.github.io/MATH582.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/mmogib/MATH582.jl",
    devbranch="master",
)
