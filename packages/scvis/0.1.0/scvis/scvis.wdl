version 1.0

task Scvis {
  command <<<
    scvis
  >>>
  output {
    File out_stdout = stdout()
  }
}