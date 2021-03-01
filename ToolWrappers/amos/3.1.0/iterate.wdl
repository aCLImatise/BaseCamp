version 1.0

task Iterate {
  command <<<
    iterate
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}