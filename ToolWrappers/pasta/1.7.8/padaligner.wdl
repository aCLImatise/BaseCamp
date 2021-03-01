version 1.0

task Padaligner {
  command <<<
    padaligner
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}