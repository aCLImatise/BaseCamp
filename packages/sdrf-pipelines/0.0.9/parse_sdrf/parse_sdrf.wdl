version 1.0

task ParseSdrf {
  command <<<
    parse_sdrf
  >>>
  output {
    File out_stdout = stdout()
  }
}