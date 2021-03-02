version 1.0

task Tblastn {
  command <<<
    tblastn
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}