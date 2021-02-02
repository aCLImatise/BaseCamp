version 1.0

task ChiselCloningpy {
  command <<<
    chisel_cloning_py
  >>>
  output {
    File out_stdout = stdout()
  }
}