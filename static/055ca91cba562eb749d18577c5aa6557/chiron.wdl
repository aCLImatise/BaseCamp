version 1.0

task Chiron {
  command <<<
    chiron
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}