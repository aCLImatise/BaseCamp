version 1.0

task Segmasker {
  command <<<
    segmasker
  >>>
  output {
    File out_stdout = stdout()
  }
}