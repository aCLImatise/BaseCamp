version 1.0

task Obspectrophore {
  command <<<
    obspectrophore
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}