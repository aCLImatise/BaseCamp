version 1.0

task Pip27 {
  command <<<
    pip2_7
  >>>
  output {
    File out_stdout = stdout()
  }
}