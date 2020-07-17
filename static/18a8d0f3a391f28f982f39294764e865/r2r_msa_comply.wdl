version 1.0

task R2rMsaComply.pl {
  input {
    String msa_file
  }
  command <<<
    r2r_msa_comply.pl \
      ~{msa_file}
  >>>
  parameter_meta {
    msa_file: ""
  }
}