version 1.0

task Lsd {
  command <<<
    lsd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}