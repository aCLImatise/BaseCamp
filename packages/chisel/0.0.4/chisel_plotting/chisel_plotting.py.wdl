version 1.0

task ChiselPlottingpy {
  command <<<
    chisel_plotting_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}