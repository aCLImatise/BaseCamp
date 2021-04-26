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
      ~{if (multifasta_genome_file) then "--input" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (base) then "--base" else ""} \
      ~{if (min_len) then "--minlen" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/funannotate:1.8.7--pyh5e36f6f_0"
  }
  parameter_meta {
    multifasta_genome_file: "Multi-fasta genome file. (Required)"
    out: "Sorted by size and relabeled output file. (Required)"
    base: "Base name to relabel contigs. Default: scaffold"
    min_len: "Shorter contigs are discarded. Default: 0"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}