version 1.0

task GaasFastaFilterBySize.pl {
  input {
    String fastFastA
    Boolean sizeSize
    String outputOutput
    String aA
    String asAs
    String theThe
    String aA
    String anAn
    String? gaasGaasFastAFilerBySizePl
  }
  command <<<
    gaas_fasta_filter_by_size.pl \
      ~{gaasGaasFastAFilerBySizePl} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{true="--size" false="" sizeSize} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}