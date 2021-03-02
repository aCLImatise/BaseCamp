version 1.0

task MakeSwathFilepy {
  command <<<
    makeSwathFile_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}