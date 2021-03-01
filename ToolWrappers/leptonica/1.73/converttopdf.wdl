version 1.0

task Converttopdf {
  command <<<
    converttopdf
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}