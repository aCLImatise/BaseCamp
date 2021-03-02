version 1.0

task Blast2sam {
  command <<<
    blast2sam
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}