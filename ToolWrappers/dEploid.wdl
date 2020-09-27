version 1.0

task DEploid {
  command <<<
    dEploid
  >>>
  output {
    File out_stdout = stdout()
  }
}