module MATH582
using FromFile
using Reexport
include("differentiation.jl")
@reexport import LinearAlgebra: svd, transpose
@reexport import Zygote: gradient, jacobian

# @from "differentiation.jl" import diff_forward, diff_centeral, diff_backward
# Write your package code here.


end
