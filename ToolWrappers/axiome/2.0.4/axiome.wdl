version 1.0

task Axiome {
  command <<<
    axiome
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}