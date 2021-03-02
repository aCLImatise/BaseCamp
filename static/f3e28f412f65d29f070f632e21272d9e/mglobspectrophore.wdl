version 1.0

task Mglobspectrophore {
  command <<<
    mglobspectrophore
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}