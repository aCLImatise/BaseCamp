version 1.0

task Translate {
  command <<<
    translate
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}