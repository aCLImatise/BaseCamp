version 1.0

task CatUncomment {
  command <<<
    catUncomment
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}