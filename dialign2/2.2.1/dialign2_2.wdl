version 1.0

task Dialign22 {
  input {
    Boolean? dna_sequences_nucleotide
    Boolean? nt
    Boolean? lgs
    String seq_file
  }
  command <<<
    dialign2-2 \
      ~{seq_file} \
      ~{true="-n" false="" dna_sequences_nucleotide} \
      ~{true="-nt" false="" nt} \
      ~{true="-lgs" false="" lgs}
  >>>
  parameter_meta {
    dna_sequences_nucleotide: "DNA sequences; similarity calculated at the nucleotide level "
    nt: "DNA sequences; similarity calculated at the peptide level (by translation using the genetic code) "
    lgs: "long genomic sequences: Both nucleotide and peptide similarities calculated "
    seq_file: ""
  }
}