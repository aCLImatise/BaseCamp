version 1.0

task Goleft {
  command <<<
    goleft
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}