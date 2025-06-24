using MATH582
using Test

@testset "MATH582.jl" begin
	# Write your tests here.
	_, S, _ = svd([1.0 0.0; 0.0 1.0])
	@test S == ones(2)
end
