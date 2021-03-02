version 1.0

task Deva {
  command <<<
    deva
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}