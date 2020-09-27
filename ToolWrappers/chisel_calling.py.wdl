version 1.0

task ChiselCallingpy {
  command <<<
    chisel_calling_py
  >>>
  output {
    File out_stdout = stdout()
  }
}