version 1.0

task Convertformat {
  command <<<
    convertformat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}