version 1.0

task Myrimatch {
  command <<<
    myrimatch
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}