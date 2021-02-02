version 1.0

task Decompose {
  command <<<
    decompose
  >>>
  output {
    File out_stdout = stdout()
  }
}