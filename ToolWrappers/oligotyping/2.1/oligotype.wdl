version 1.0

task Oligotype {
  command <<<
    oligotype
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}