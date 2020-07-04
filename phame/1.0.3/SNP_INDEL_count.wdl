version 1.0

task SNPINDELCount.pl {
  input {
    String perl
  }
  command <<<
    SNP_INDEL_count.pl \
      ~{perl}
  >>>
  parameter_meta {
    perl: ""
  }
}