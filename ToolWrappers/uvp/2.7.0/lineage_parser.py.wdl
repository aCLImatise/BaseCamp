version 1.0

task LineageParserpy {
  command <<<
    lineage_parser_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}