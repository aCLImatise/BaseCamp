version 1.0

task HiCParserpy {
  command <<<
    hiC_parser_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}