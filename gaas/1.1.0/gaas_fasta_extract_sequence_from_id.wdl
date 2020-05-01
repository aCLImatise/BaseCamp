version 1.0

task GaasFastaExtractSequenceFromId.pl {
  input {
    String fastFastA
    Boolean nameName
    Boolean lineLine
    Boolean colCol
    Boolean qQ
    String outputOutput
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    gaas_fasta_extract_sequence_from_id.pl \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{true="--name" false="" nameName} \
      ~{true="--line" false="" lineLine} \
      ~{true="--col" false="" colCol} \
      ~{true="-q" false="" qQ} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}