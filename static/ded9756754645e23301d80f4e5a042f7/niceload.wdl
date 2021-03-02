version 1.0

task Niceload {
  command <<<
    niceload
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}