version 1.0

task Sgldwtsh {
  command <<<
    sgldwt_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}