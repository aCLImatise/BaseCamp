version 1.0

task R2rMsaComply.pl {
  input {
    String? msaMsaFile
  }
  command <<<
    r2r_msa_comply.pl \
      ~{msaMsaFile}
  >>>
}