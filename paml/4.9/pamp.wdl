version 1.0

task Pamp {
  command <<<
    pamp
  >>>
  output {
    File out_stdout = stdout()
  }
}