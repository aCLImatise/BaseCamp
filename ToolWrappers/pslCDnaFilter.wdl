version 1.0

task PslCDnaFilter {
  command <<<
    pslCDnaFilter
  >>>
  output {
    File out_stdout = stdout()
  }
}