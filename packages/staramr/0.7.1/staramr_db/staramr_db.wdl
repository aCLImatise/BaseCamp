version 1.0

task StaramrDb {
  command <<<
    staramr db
  >>>
  output {
    File out_stdout = stdout()
  }
}