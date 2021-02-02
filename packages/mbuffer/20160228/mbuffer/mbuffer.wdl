version 1.0

task Mbuffer {
  command <<<
    mbuffer
  >>>
  output {
    File out_stdout = stdout()
  }
}