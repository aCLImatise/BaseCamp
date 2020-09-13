version 1.0

task Bamnumericalindex {
  command <<<
    bamnumericalindex
  >>>
  output {
    File out_stdout = stdout()
  }
}