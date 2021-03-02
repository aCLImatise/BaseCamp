version 1.0

task Fastarematch {
  input {
    Boolean? norc
    String? erase
    String iupac_dna_motif
  }
  command <<<
    fasta_re_match \
      ~{iupac_dna_motif} \
      ~{if (norc) then "-norc" else ""} \
      ~{if defined(erase) then ("-erase " +  '"' + erase + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    norc: "Only find matches to motifs in the given strand"
    erase: "erases this motif before finding matches;\\nrepeatable; order matters!"
    iupac_dna_motif: ""
  }
  output {
    File out_stdout = stdout()
  }
}