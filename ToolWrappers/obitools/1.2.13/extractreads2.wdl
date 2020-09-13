version 1.0

task Extractreads2 {
  command <<<
    extractreads2
  >>>
  output {
    File out_stdout = stdout()
  }
}