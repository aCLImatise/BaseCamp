version 1.0

task Findknownsnps {
  command <<<
    findknownsnps
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}