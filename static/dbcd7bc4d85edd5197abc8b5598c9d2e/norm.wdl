version 1.0

task Norm {
  command <<<
    norm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}