version 1.0

task Mispipe {
  command <<<
    mispipe
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}