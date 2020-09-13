version 1.0

task Basemlg {
  command <<<
    basemlg
  >>>
  output {
    File out_stdout = stdout()
  }
}