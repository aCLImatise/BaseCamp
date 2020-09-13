version 1.0

task FilterMRNA {
  command <<<
    filterMRNA
  >>>
  output {
    File out_stdout = stdout()
  }
}