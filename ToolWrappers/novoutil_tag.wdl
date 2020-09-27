version 1.0

task NovoutilTag {
  input {
    String ref_idx
    String k_mer
  }
  command <<<
    novoutil tag \
      ~{ref_idx} \
      ~{k_mer}
  >>>
  parameter_meta {
    ref_idx: "is an indexed reference sequence created by Novoindex."
    k_mer: "is a nucleotide tag not longer than index k-mer length."
  }
  output {
    File out_stdout = stdout()
  }
}