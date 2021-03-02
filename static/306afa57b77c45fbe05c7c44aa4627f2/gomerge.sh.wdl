version 1.0

task Gomergesh {
  command <<<
    gomerge_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}