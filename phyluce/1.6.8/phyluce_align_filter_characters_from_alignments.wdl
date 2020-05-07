version 1.0

task PhyluceAlignFilterCharactersFromAlignments {
  input {
    String alignmentsAlignments
    String outputOutput
    String inputInputFormat
  }
  command <<<
    phyluce_align_filter_characters_from_alignments \
      ~{if defined(alignmentsAlignments) then ("--alignments " +  '"' + alignmentsAlignments + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""}
  >>>
}