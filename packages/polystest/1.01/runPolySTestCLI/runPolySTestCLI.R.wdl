version 1.0

task RunPolySTestCLIR {
  command <<<
    runPolySTestCLI_R
  >>>
  output {
    File out_stdout = stdout()
  }
}