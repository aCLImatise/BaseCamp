version 1.0

task Dialign22 {
  input {
    Boolean? dna_sequences_nucleotide
    Boolean? nt
    Boolean? lgs
    String seq_file
  }
  command <<<
    dialign2_2 \
      ~{seq_file} \
      ~{if (dna_sequences_nucleotide) then "-n" else ""} \
      ~{if (nt) then "-nt" else ""} \
      ~{if (lgs) then "-lgs" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dna_sequences_nucleotide: "DNA sequences; similarity calculated at the nucleotide level"
    nt: "DNA sequences; similarity calculated at the peptide level\\n(by translation using the genetic code)"
    lgs: "long genomic sequences: Both nucleotide and peptide\\nsimilarities calculated"
    seq_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}