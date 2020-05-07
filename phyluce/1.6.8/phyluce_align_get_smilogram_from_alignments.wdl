version 1.0

task PhyluceAlignGetSmilogramFromAlignments {
  input {
    String alignmentsAlignments
    String outputOutput
    String inputInputFormat
    String coresCores
    Boolean smilSmilOgram
  }
  command <<<
    phyluce_align_get_smilogram_from_alignments \
      ~{if defined(alignmentsAlignments) then ("--alignments " +  '"' + alignmentsAlignments + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{true="--smilogram" false="" smilSmilOgram}
  >>>
}