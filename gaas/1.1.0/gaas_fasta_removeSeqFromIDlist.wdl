version 1.0

task GaasFastaRemoveSeqFromIDlist.pl {
  input {
    String fasta1Fasta1
    String fasta2Fasta2
    Boolean oO
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    gaas_fasta_removeSeqFromIDlist.pl \
      ~{if defined(fasta1Fasta1) then ("--fasta1 " +  '"' + fasta1Fasta1 + '"') else ""} \
      ~{if defined(fasta2Fasta2) then ("--fasta2 " +  '"' + fasta2Fasta2 + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}