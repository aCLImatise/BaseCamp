version 1.0

task ResisParserpy {
  command <<<
    resis_parser_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}