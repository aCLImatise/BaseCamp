version 1.0

task Starchdiffmegarow {
  command <<<
    starch_diff_megarow
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}