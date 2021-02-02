version 1.0

task FermiSeqrank {
  input {
    String fermi
    String seq_sort
  }
  command <<<
    fermi seqrank \
      ~{fermi} \
      ~{seq_sort}
  >>>
  parameter_meta {
    fermi: ""
    seq_sort: ""
  }
  output {
    File out_stdout = stdout()
  }
}