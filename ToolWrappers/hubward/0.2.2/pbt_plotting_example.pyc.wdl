version 1.0

task PbtPlottingExamplepyc {
  command <<<
    pbt_plotting_example_pyc
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}