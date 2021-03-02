version 1.0

task RunPolySTestCLIR {
  command <<<
    runPolySTestCLI_R
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}