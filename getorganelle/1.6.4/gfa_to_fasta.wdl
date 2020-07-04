version 1.0

task GfaToFasta.py {
  input {
    String gfa_two_fasta_do_tpy
  }
  command <<<
    gfa_to_fasta.py \
      ~{gfa_two_fasta_do_tpy}
  >>>
  parameter_meta {
    gfa_two_fasta_do_tpy: ""
  }
}