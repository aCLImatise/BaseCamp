version 1.0

task Estwise {
  command <<<
    estwise
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}