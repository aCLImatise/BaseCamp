version 1.0

task EMBLSwissprotParserpl {
  command <<<
    EMBL_swissprot_parser_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}