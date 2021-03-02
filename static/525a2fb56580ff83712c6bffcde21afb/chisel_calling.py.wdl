version 1.0

task ChiselCallingpy {
  command <<<
    chisel_calling_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}