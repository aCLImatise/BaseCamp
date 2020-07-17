version 1.0

task FunannotateClean {
  input {
    Boolean? multifasta_genome_file
    Boolean? out
    Boolean? p_ident
    Boolean? cov
    Boolean? min_len
    Boolean? exhaustive
    String arguments
  }
  command <<<
    funannotate clean \
      ~{arguments} \
      ~{true="--input" false="" multifasta_genome_file} \
      ~{true="--out" false="" out} \
      ~{true="--pident" false="" p_ident} \
      ~{true="--cov" false="" cov} \
      ~{true="--minlen" false="" min_len} \
      ~{true="--exhaustive" false="" exhaustive}
  >>>
  parameter_meta {
    multifasta_genome_file: "Multi-fasta genome file (Required)"
    out: "Cleaned multi-fasta output file (Required)"
    p_ident: "Percent identity of overlap. Default = 95"
    cov: "Percent coverage of overlap. Default = 95"
    min_len: "Minimum length of contig to keep. Default = 500"
    exhaustive: "Test every contig. Default is to stop at N50 value."
    arguments: ""
  }
}