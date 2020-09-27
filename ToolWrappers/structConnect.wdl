version 1.0

task StructConnect {
  command <<<
    structConnect
  >>>
  output {
    File out_stdout = stdout()
  }
}