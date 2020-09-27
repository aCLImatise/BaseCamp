version 1.0

task PFAMDatParserpl {
  command <<<
    PFAM_dat_parser_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}