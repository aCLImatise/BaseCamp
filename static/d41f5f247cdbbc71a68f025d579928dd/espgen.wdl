version 1.0

task Espgen {
  command <<<
    espgen
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}