version 1.0

task Deepbinner {
  command <<<
    deepbinner
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}