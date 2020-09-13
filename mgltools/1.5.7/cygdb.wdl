version 1.0

task Cygdb {
  command <<<
    cygdb
  >>>
  output {
    File out_stdout = stdout()
  }
}