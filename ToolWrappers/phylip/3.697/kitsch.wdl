version 1.0

task Kitsch {
  command <<<
    kitsch
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}