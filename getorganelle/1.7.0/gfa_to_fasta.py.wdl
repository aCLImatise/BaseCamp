version 1.0

task GfaToFastapy {
  input {
    Int gfa_two_fasta_do_tpy
  }
  command <<<
    gfa_to_fasta_py \
      ~{gfa_two_fasta_do_tpy}
  >>>
  parameter_meta {
    gfa_two_fasta_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}