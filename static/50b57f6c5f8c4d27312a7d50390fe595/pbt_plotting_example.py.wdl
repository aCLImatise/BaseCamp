version 1.0

task PbtPlottingExamplepy {
  command <<<
    pbt_plotting_example_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}