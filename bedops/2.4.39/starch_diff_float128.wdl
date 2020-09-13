version 1.0

task Starchdifffloat128 {
  command <<<
    starch_diff_float128
  >>>
  output {
    File out_stdout = stdout()
  }
}