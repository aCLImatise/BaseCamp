version 1.0

task Macs2 {
  command <<<
    macs2
  >>>
  output {
    File out_stdout = stdout()
  }
}