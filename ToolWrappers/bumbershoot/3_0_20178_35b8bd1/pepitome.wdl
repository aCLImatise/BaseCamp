version 1.0

task Pepitome {
  command <<<
    pepitome
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}