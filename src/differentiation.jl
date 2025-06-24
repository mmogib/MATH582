"""
	diff_forward(f, x; h = sqrt(eps(Float64)))

Compute the **forward finite difference approximation** of the derivative of `f` at point `x`.

# Arguments
- `f::Function`: A univariate real-valued function.
- `x::Real`: The point at which to approximate the derivative.
- `h::Real`: Step size (default: `sqrt(eps(Float64))`).

# Returns
- An approximation of `f′(x)` using the forward difference:  
  ``f'(x) ≈ (f(x + h) - f(x)) / h``

# Example
```julia
diff_forward(sin, π/4)
"""
diff_forward(f, x; h = sqrt(eps(Float64))) = (f(x+h)-f(x))/h

"""
	diff_central(f, x; h = cbrt(eps(Float64)))

Compute the **central finite difference approximation** of the derivative of `f` at point `x`.

# Arguments
- `f::Function`: A univariate real-valued function.
- `x::Real`: The point at which to approximate the derivative.
- `h::Real`: Step size (default: `cbrt(eps(Float64))`).

# Returns
- An approximation of `f′(x)` using the central difference:  
  ``f'(x) ≈ (f(x + h/2) - f(x - h/2)) / h``

# Example
```julia
diff_central(exp, 1.0)
"""
diff_central(f, x; h = cbrt(eps(Float64))) = (f(x+h/2)-f(x-h/2))/h

"""
	diff_backward(f, x; h = sqrt(eps(Float64)))

Compute the **backward finite difference approximation** of the derivative of `f` at point `x`.

# Arguments
- `f::Function`: A univariate real-valued function.
- `x::Real`: The point at which to approximate the derivative.
- `h::Real`: Step size (default: `sqrt(eps(Float64))`).

# Returns
- An approximation of `f′(x)` using the backward difference:  
  ``f'(x) ≈ (f(x) - f(x - h)) / h``

# Example
```julia
diff_backward(log, 2.0)
"""
diff_backward(f, x; h = sqrt(eps(Float64))) = (f(x)-f(x-h))/h

export diff_backward, diff_central, diff_forward
