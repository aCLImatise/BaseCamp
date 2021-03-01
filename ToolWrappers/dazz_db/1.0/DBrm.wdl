version 1.0

task DBrm {
  command <<<
    DBrm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}