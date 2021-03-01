version 1.0

task HiCParserLoadPickleFilepy {
  command <<<
    hiC_parser_load_pickle_file_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}