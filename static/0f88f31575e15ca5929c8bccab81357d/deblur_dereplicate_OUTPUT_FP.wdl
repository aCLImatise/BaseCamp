version 1.0

task DeblurDereplicateOUTPUTFP {
  input {
    String? optionsOptions
    String? seqsSeqsFp
    String? outputOutputFp
  }
  command <<<
    deblur dereplicate OUTPUT_FP \
      ~{optionsOptions} \
      ~{seqsSeqsFp} \
      ~{outputOutputFp}
  >>>
}