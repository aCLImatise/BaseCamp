version 1.0

task Rearr2bedpe {
  command <<<
    rearr2bedpe
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}