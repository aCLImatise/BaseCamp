version 1.0

task Findrule {
  command <<<
    findrule
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}