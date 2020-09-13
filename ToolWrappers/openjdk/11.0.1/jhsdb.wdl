version 1.0

task Jhsdb {
  command <<<
    jhsdb
  >>>
  output {
    File out_stdout = stdout()
  }
}