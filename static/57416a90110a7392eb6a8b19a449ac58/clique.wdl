version 1.0

task Clique {
  command <<<
    clique
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}