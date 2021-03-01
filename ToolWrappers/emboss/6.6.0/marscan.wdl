version 1.0

task Marscan {
  command <<<
    marscan
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}