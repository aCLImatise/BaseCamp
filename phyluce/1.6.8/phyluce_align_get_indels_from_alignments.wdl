version 1.0

task PhyluceAlignGetIndelsFromAlignments {
  input {
    String alignmentsAlignments
    String outputOutput
    String outOutGroup
    String inputInputFormat
    String trimTrim
    String coresCores
  }
  command <<<
    phyluce_align_get_indels_from_alignments \
      ~{if defined(alignmentsAlignments) then ("--alignments " +  '"' + alignmentsAlignments + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outOutGroup) then ("--outgroup " +  '"' + outOutGroup + '"') else ""} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(trimTrim) then ("--trim " +  '"' + trimTrim + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""}
  >>>
}