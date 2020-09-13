version 1.0

task Acdtable {
  command <<<
    acdtable
  >>>
  output {
    File out_stdout = stdout()
  }
}