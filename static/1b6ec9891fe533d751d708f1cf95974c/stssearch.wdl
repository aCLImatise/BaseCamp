version 1.0

task Stssearch {
  command <<<
    stssearch
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}