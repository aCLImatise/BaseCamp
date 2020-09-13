version 1.0

task Xmlvalid {
  command <<<
    xmlvalid
  >>>
  output {
    File out_stdout = stdout()
  }
}