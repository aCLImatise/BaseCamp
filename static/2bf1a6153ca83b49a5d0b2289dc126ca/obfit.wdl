version 1.0

task Obfit {
  command <<<
    obfit
  >>>
  output {
    File out_stdout = stdout()
  }
}