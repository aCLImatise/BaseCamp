version 1.0

task SelectLongestReads {
  command <<<
    SelectLongestReads
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}