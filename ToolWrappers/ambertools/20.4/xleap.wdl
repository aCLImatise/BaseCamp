version 1.0

task Xleap {
  command <<<
    xleap
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}