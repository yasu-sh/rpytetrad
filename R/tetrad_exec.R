# this code is already outdated since the py-tetrad's specs changed.

ExecPytetrad <- function(){
  c.start.time <- proc.time()
  print(reticulate::py_config())
  setwd("E:/PyProjects/py-tetrad/pytetrad")
  #  reticulate::py_run_file("./run_continuous.py")
  #  reticulate::py_run_file("./run_with_loaded_knowledge.py")
  #  library(rpyTetrad)

  library(bnlearn)
  library(reticulate)
  print(reticulate::py_config())
  setwd("E:/PyProjects/py-tetrad/pytetrad")
  py$df <- reticulate::r_to_py(asia)
  reticulate::py_run_file("./run_discrete_from_R.py")
  py$df <- reticulate::r_to_py(alarm)
  reticulate::py_run_file("./run_discrete_from_R.py")


  library(bnlearn)
  library(reticulate)
  print(py_config())
  setwd("E:/PyProjects/py-tetrad/pytetrad")
  py$df <- r_to_py(asia)
  py_run_file("./run_discrete_from_R.py")
  py$df <- r_to_py(alarm)
  py_run_file("./run_discrete_from_R.py")


  print(proc.time() - c.start.time)

}
