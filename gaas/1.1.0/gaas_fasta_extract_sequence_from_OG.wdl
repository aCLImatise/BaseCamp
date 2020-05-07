version 1.0

task GaasFastaExtractSequenceFromOG.pl {
  input {
    String fastFastA
    Boolean ogOg
    Boolean dirDir
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    gaas_fasta_extract_sequence_from_OG.pl \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{true="--og" false="" ogOg} \
      ~{true="--dir" false="" dirDir} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}