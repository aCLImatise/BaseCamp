version 1.0

task Starchdifffloat128 {
  command <<<
    starch_diff_float128
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}