version 1.0

task Starchdiff {
  command <<<
    starch_diff
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}