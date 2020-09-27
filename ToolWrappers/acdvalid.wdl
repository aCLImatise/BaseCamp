version 1.0

task Acdvalid {
  command <<<
    acdvalid
  >>>
  output {
    File out_stdout = stdout()
  }
}