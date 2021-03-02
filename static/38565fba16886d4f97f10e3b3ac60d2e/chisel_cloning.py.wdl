version 1.0

task ChiselCloningpy {
  command <<<
    chisel_cloning_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}