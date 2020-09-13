version 1.0

task Novoutil {
  command <<<
    novoutil
  >>>
  output {
    File out_stdout = stdout()
  }
}