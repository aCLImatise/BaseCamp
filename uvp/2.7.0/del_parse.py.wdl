version 1.0

task DelParsepy {
  command <<<
    del_parse_py
  >>>
  output {
    File out_stdout = stdout()
  }
}