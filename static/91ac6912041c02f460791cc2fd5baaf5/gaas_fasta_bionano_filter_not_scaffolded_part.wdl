version 1.0

task GaasFastaBionanoFilterNotScaffoldedPart.pl {
  input {
    String fasta1Fasta1
    String agpAgp
    Boolean oO
    String aA
    String asAs
    String theThe
    String aA
    String anAn
    String? myMyScriptPl
  }
  command <<<
    gaas_fasta_bionano_filter_not_scaffolded_part.pl \
      ~{myMyScriptPl} \
      ~{if defined(fasta1Fasta1) then ("--fasta1 " +  '"' + fasta1Fasta1 + '"') else ""} \
      ~{if defined(agpAgp) then ("--agp " +  '"' + agpAgp + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}