version 1.0

task Ete {
  command <<<
    ete
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}