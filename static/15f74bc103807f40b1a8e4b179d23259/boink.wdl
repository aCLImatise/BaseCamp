version 1.0

task Boink {
  command <<<
    boink
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}