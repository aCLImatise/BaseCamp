version 1.0

task Sdtether {
  command <<<
    sdtether
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}