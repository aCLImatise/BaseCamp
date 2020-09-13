version 1.0

task Gmvalue {
  command <<<
    gmvalue
  >>>
  output {
    File out_stdout = stdout()
  }
}