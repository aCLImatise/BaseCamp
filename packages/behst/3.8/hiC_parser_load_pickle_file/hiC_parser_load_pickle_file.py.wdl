version 1.0

task HiCParserLoadPickleFilepy {
  command <<<
    hiC_parser_load_pickle_file_py
  >>>
  output {
    File out_stdout = stdout()
  }
}