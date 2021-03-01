version 1.0

task StarParsepy {
  command <<<
    star_parse_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}