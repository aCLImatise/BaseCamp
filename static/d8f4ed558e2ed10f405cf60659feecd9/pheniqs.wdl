version 1.0

task Pheniqs {
  command <<<
    pheniqs
  >>>
  output {
    File out_stdout = stdout()
  }
}