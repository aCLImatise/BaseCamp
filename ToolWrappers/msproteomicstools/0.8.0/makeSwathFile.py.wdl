version 1.0

task MakeSwathFilepy {
  command <<<
    makeSwathFile_py
  >>>
  output {
    File out_stdout = stdout()
  }
}