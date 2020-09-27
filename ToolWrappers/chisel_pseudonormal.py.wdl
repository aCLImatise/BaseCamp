version 1.0

task ChiselPseudonormalpy {
  command <<<
    chisel_pseudonormal_py
  >>>
  output {
    File out_stdout = stdout()
  }
}