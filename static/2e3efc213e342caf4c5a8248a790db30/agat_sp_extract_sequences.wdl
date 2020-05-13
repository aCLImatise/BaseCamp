version 1.0

task AgatSpExtractSequences.pl {
  input {
    Boolean fullFull
    Boolean upUp
    Boolean doDo
    Boolean cdnaCdna
    Boolean ofOfS
    String cleanCleanInternalStop
    String cleanCleanFinalStop
    String removeRemoveOrfOffset
    String outputOutput
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    agat_sp_extract_sequences.pl \
      ~{true="--full" false="" fullFull} \
      ~{true="--up" false="" upUp} \
      ~{true="--do" false="" doDo} \
      ~{true="--cdna" false="" cdnaCdna} \
      ~{true="--ofs" false="" ofOfS} \
      ~{if defined(cleanCleanInternalStop) then ("--clean_internal_stop " +  '"' + cleanCleanInternalStop + '"') else ""} \
      ~{if defined(cleanCleanFinalStop) then ("--clean_final_stop " +  '"' + cleanCleanFinalStop + '"') else ""} \
      ~{if defined(removeRemoveOrfOffset) then ("--remove_orf_offset " +  '"' + removeRemoveOrfOffset + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}