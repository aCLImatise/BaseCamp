version 1.0

task DeSALTIndex {
  command <<<
    deSALT index
  >>>
  output {
    File out_stdout = stdout()
  }
}