version 1.0

task PbtPlottingExamplepyc {
  command <<<
    pbt_plotting_example_pyc
  >>>
  output {
    File out_stdout = stdout()
  }
}