version 1.0

task Segmasker {
  command <<<
    segmasker
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}