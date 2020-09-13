version 1.0

task Coverage36 {
  command <<<
    coverage_3_6
  >>>
  output {
    File out_stdout = stdout()
  }
}