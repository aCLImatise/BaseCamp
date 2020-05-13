version 1.0

task AgatSqRemoveRedundantEntries.pl {
  input {
    String inputInput
    String outputOutput
    String aA
    String asAs
    String theThe
    String aA
    String anAn
    String? agatAgatRemoveRedundantEntriesPl
  }
  command <<<
    agat_sq_remove_redundant_entries.pl \
      ~{agatAgatRemoveRedundantEntriesPl} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}