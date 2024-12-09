t_values <- c(1.57, 0.88, 4.916, 16.27)
dfs <- c(49, 99, 499, 4999)

for (i in 1:length(t_values)){
  p_t <- pt(t_values[i], df=dfs[i])
  p_value <- 2*(1-p_t)
  print(p_value)
}
