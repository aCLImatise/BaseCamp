version 1.0

task Slamdunk {
  command <<<
    slamdunk
  >>>
  output {
    File out_stdout = stdout()
  }
}