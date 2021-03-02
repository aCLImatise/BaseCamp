version 1.0

task Starchdifftypical {
  command <<<
    starch_diff_typical
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}