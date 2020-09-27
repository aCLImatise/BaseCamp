version 1.0

task Addles {
  command <<<
    addles
  >>>
  output {
    File out_stdout = stdout()
  }
}