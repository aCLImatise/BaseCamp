version 1.0

task ChiselPlottingpy {
  command <<<
    chisel_plotting_py
  >>>
  output {
    File out_stdout = stdout()
  }
}