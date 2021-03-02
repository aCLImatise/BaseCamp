version 1.0

task Parldyn {
  command <<<
    parldyn
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}