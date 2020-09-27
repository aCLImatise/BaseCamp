version 1.0

task ResisParserpy {
  command <<<
    resis_parser_py
  >>>
  output {
    File out_stdout = stdout()
  }
}