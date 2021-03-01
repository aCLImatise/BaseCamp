version 1.0

task Xmlindent {
  command <<<
    xmlindent
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}