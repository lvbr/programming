##########################
# Example power car
##########################

V <- c(seq(1, 100, 5 ))
m <-  31752
# Cdrag <- runif(10, 0.5, 1)

power_car = function (V, m, Cdrag = 0.3, A = 9, g = 9.8, Pair = 1.2, 
                      Crolling = 0.015){
  pb =  (Crolling * m * g * V + (0.5 *A) * Pair * Cdrag * (V^3))
  pbmin = min(pb)
  pbmax = max(pb)
  return(list(pb = pb, pbmin = pbmin, pbmax=pbmax, m=m))
}

#res = apply(as.matrix(Cdrag), 1 , power_car, V = V, m = m)
#pb1 = power_car(V, m)

# Sample 
A <- c(1000, 20, 400)
sample(A, 20, replace = T)
