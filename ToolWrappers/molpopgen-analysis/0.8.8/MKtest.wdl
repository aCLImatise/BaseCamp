version 1.0

task MKtest {
  command <<<
    MKtest
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}