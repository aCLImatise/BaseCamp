version 1.0

task Sift4g {
  command <<<
    sift4g
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}