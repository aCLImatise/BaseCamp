version 1.0

task CommonErrorsFromBamBam {
  input {
    String outputOutputPrefix
    String? bamBam
    String? refRefFastA
  }
  command <<<
    common_errors_from_bam bam \
      ~{bamBam} \
      ~{if defined(outputOutputPrefix) then ("--output_prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{refRefFastA}
  >>>
}