version 1.0

task Stssearch {
  command <<<
    _stssearch
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}