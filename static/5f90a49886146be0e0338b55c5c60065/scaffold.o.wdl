version 1.0

task Scaffoldo {
  command <<<
    scaffold_o
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}