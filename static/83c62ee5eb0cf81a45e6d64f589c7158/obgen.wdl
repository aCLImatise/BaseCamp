version 1.0

task Obgen {
  command <<<
    obgen
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}