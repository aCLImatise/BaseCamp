version 1.0

task EMBLSwissprotParserpl {
  command <<<
    EMBL_swissprot_parser_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}