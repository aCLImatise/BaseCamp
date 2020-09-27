version 1.0

task HiCParserpy {
  command <<<
    hiC_parser_py
  >>>
  output {
    File out_stdout = stdout()
  }
}