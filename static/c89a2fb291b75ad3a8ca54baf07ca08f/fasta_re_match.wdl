version 1.0

task FastaReMatch {
  input {
    Boolean? norc
    String? erase
    String iupac_dna_motif
  }
  command <<<
    fasta-re-match \
      ~{iupac_dna_motif} \
      ~{true="-norc" false="" norc} \
      ~{if defined(erase) then ("-erase " +  '"' + erase + '"') else ""}
  >>>
  parameter_meta {
    norc: "Only find matches to motifs in the given strand"
    erase: "erases this motif before finding matches;  repeatable; order matters!"
    iupac_dna_motif: ""
  }
}