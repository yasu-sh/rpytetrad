.onLoad <- function(libname, pkgname) {
  Sys.setenv(RETICULATE_PYTHON = "C:/Python/venv/pytetrad/Scripts/")
  # not good manner, just for working.
  setwd("./py-tetrad/pytetrad/")
}
