version 1.0

task ExtractContig {
  input {
    String bank_name
    String contig_iid
    String new_bank
  }
  command <<<
    extractContig \
      ~{bank_name} \
      ~{contig_iid} \
      ~{new_bank}
  >>>
  parameter_meta {
    bank_name: ""
    contig_iid: ""
    new_bank: ""
  }
  output {
    File out_stdout = stdout()
  }
}