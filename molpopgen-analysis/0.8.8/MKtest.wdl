version 1.0

task MKtest {
  command <<<
    MKtest
  >>>
  output {
    File out_stdout = stdout()
  }
}