version 1.0

task StarParsepy {
  command <<<
    star_parse_py
  >>>
  output {
    File out_stdout = stdout()
  }
}