version 1.0

task Mglobrotamer {
  command <<<
    mglobrotamer
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}