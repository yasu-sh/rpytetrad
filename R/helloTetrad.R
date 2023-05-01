# This is just written weird sketch from sample_r_code2.R

HelloTetrad <- function() {

  cat("runs on this environment: \n")
  print(py_config())

  data <-
    read.table("./resources/airfoil-self-noise.continuous.txt",
               header = TRUE,
               colClasses = "numeric",
               stringsAsFactors = FALSE)

  # i <- c(1, 6)
  # data[ , i] <- apply(data[ , i], 2, function(x) as.numeric(x))

  ## Make a TetradSearch object.
  source_python("./tools/TetradSearch.py")
  ts <- TetradSearch(data)

  ts$add_to_tier(1, "Frequency")
  ts$add_to_tier(1, "Attack")
  ts$add_to_tier(1, "Chord")
  ts$add_to_tier(1, "Velocity")
  ts$add_to_tier(1, "Displacement")
  ts$add_to_tier(2, "Pressure")

  ## Run the search and return the graph in PCALG format
  ts$use_sem_bic(penalty_discount=2)
  ts$use_fisher_z(0.05)
  ts$run_fges()

  ## Print the graph and grab the DOT format string (for Grasphviz)
  print(ts$get_string())
  dot <- ts$get_dot()

  ## Allows RStudio to render graphs in the Viewer window.
#  library('DiagrammeR')
  grViz(dot)
}
