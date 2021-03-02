version 1.0

task Picard {
  command <<<
    picard
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}