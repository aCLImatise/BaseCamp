version 1.0

task SNPINDELCountpl {
  input {
    String perl
  }
  command <<<
    SNP_INDEL_count_pl \
      ~{perl}
  >>>
  parameter_meta {
    perl: ""
  }
  output {
    File out_stdout = stdout()
  }
}