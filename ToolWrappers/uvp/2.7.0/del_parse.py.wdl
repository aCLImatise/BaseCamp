version 1.0

task DelParsepy {
  command <<<
    del_parse_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}