version 1.0

task Genewise {
  command <<<
    genewise
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}