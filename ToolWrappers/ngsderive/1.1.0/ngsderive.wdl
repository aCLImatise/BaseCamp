version 1.0

task Ngsderive {
  command <<<
    ngsderive
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}