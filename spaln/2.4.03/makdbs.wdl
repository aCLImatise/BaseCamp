version 1.0

task Makdbs {
  input {
    Boolean? dna_protein_sequence
    Boolean? d
    Boolean? s_srcdir
    Boolean? p_dst_dir
    String? name
    String source_files
  }
  command <<<
    makdbs \
      ~{name} \
      ~{source_files} \
      ~{true="-K" false="" dna_protein_sequence} \
      ~{true="-d" false="" d} \
      ~{true="-sSrcdir" false="" s_srcdir} \
      ~{true="-pDstdir" false="" p_dst_dir}
  >>>
  parameter_meta {
    dna_protein_sequence: "[D|P] : DNA or Protein sequence"
    d: ""
    s_srcdir: ""
    p_dst_dir: ""
    name: ""
    source_files: ""
  }
}