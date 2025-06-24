using MATH582
using Test

@testset "MATH582.jl" begin
	# Write your tests here.
	_, S, _ = svd([1.0 0.0; 0.0 1.0])
	@test S == ones(2)
	gval,=gradient(x -> 3x^2 + 2x + 1, 5)
	@test gval==32.0
	gacval,=jacobian(a->[gradient(((x, y),) -> 3x^2 + 2x + y^2, (a[1], a[2]))[1]...], [1, 2])
	@test gacval==[6.0 0.0; 0.0 2.0]

end
