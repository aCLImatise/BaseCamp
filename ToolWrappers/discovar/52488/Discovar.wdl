version 1.0

task Discovar {
  command <<<
    Discovar
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}