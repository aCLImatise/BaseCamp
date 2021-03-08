version 1.0

task GfaToFastapy {
  input {
    Int gfa_two_fasta_do_tpy
  }
  command <<<
    gfa_to_fasta_py \
      ~{gfa_two_fasta_do_tpy}
  >>>
  runtime {
    docker: "quay.io/biocontainers/getorganelle:1.7.3.5--pyh3252c3a_0"
  }
  parameter_meta {
    gfa_two_fasta_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}