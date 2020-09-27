version 1.0

task Hostid {
  command <<<
    hostid
  >>>
  output {
    File out_stdout = stdout()
  }
}