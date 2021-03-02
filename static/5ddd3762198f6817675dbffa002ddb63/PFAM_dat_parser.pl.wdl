version 1.0

task PFAMDatParserpl {
  command <<<
    PFAM_dat_parser_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}