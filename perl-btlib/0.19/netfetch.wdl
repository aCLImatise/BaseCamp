version 1.0

task Netfetch {
  command <<<
    netfetch
  >>>
  output {
    File out_stdout = stdout()
  }
}