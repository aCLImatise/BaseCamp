version 1.0

task CatDir {
  command <<<
    catDir
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}