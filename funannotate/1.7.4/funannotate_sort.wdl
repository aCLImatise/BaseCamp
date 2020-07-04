version 1.0

task FunannotateSort {
  input {
    Boolean? multifasta_genome_file
    Boolean? out
    Boolean? base
    Boolean? min_len
    String arguments
  }
  command <<<
    funannotate sort \
      ~{arguments} \
      ~{true="--input" false="" multifasta_genome_file} \
      ~{true="--out" false="" out} \
      ~{true="--base" false="" base} \
      ~{true="--minlen" false="" min_len}
  >>>
  parameter_meta {
    multifasta_genome_file: "Multi-fasta genome file. (Required)"
    out: "Sorted by size and relabeled output file. (Required)"
    base: "Base name to relabel contigs. Default: scaffold"
    min_len: "Shorter contigs are discarded. Default: 0"
    arguments: ""
  }
}