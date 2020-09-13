version 1.0

task PFAMtoGoParserpl {
  input {
    String pfam_to_go
  }
  command <<<
    PFAMtoGoParser_pl \
      ~{pfam_to_go}
  >>>
  parameter_meta {
    pfam_to_go: ""
  }
  output {
    File out_stdout = stdout()
  }
}