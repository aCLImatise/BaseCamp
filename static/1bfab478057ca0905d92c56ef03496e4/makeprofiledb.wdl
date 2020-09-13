version 1.0

task Makeprofiledb {
  command <<<
    makeprofiledb
  >>>
  output {
    File out_stdout = stdout()
  }
}