version 1.0

task NcrfParsepy {
  command <<<
    ncrf_parse_py
  >>>
  output {
    File out_stdout = stdout()
  }
}