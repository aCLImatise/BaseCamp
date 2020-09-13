version 1.0

task PbtPlottingExamplepy {
  command <<<
    pbt_plotting_example_py
  >>>
  output {
    File out_stdout = stdout()
  }
}