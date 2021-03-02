version 1.0

task Coderet {
  command <<<
    coderet
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}