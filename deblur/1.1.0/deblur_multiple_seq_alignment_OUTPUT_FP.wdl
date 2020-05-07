version 1.0

task DeblurMultipleSeqAlignmentOUTPUTFP {
  input {
    String? optionsOptions
    String? seqsSeqsFp
    String? outputOutputFp
  }
  command <<<
    deblur multiple-seq-alignment OUTPUT_FP \
      ~{optionsOptions} \
      ~{seqsSeqsFp} \
      ~{outputOutputFp}
  >>>
}