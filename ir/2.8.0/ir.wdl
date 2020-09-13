version 1.0

task Ir {
  command <<<
    ir
  >>>
  output {
    File out_stdout = stdout()
  }
}