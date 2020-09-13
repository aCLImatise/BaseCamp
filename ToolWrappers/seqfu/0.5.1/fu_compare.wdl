version 1.0

task Fucompare {
  command <<<
    fu_compare
  >>>
  output {
    File out_stdout = stdout()
  }
}