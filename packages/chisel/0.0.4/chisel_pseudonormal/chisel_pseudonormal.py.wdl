version 1.0

task ChiselPseudonormalpy {
  command <<<
    chisel_pseudonormal_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}