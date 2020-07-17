version 1.0

task PFAMtoGoParser.pl {
  input {
    String pfam_to_go
  }
  command <<<
    PFAMtoGoParser.pl \
      ~{pfam_to_go}
  >>>
  parameter_meta {
    pfam_to_go: ""
  }
}