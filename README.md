# rpytetrad

R Interface to 'py-tetrad'

TETRAD is an open source software library for causal discovery and causal inference with GUI. rpytetrad package utilizes you to access TETRAD internal function via py-tetrad with python virtual environment.

# prerequisite:

1.  Setup Java 8 or above.
2.  Setup python 3.7 or above.

# installation: this instruction is just a plot(idea). Not woking.

1.  Setup R & RStudio.
2.  install devtools

``` r
install.packages("devtools", type="win.binary")
```

3.  install from rpytetrad repository directly

``` r
devtools::install_github("yasu-sh/rpytetrad")
```

4.  making python environment like this: <https://tensorflow.rstudio.com/install/>

not working: internally works like\
pip install JPype, causal-learn

``` r
library(rpytetrad)
install_pytetrad()
```

5.  runs sample code /  equivalent: source_python("tools/TetradSearch.py") & ts \<- TetradSearch(data)

``` r        
td <- TetradDiscovery(data)

td$add_to_tier(1, "Frequency")
...
td$run_fges()
print(td$get_string())
dot <- tsd$get_dot()

grViz(dot)
```

6. runs sample function helloTetrad()
``` r        
helloTetrad()
```

### `library() & setwd()` is annoying. NAMESPACE file may filter unnecessary objects on Global environment (it is like desktop).

## Documentation

refer to <https://github.com/cmu-phil/tetrad>\
<https://github.com/cmu-phil/py-tetrad>
