version 1.0

task AgatSqAddHashTag.pl {
  input {
    String inputInput
    String intervalInterval
    String outputOutput
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    agat_sq_add_hash_tag.pl \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(intervalInterval) then ("--interval " +  '"' + intervalInterval + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}