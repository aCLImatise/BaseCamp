version 1.0

task Prody {
  command <<<
    prody
  >>>
  output {
    File out_stdout = stdout()
  }
}