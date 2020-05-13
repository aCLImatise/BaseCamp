version 1.0

task DeblurRemoveChimerasDenovoOUTPUTFP {
  input {
    String? optionsOptions
    String? seqsSeqsFp
    String? outputOutputFp
  }
  command <<<
    deblur remove-chimeras-denovo OUTPUT_FP \
      ~{optionsOptions} \
      ~{seqsSeqsFp} \
      ~{outputOutputFp}
  >>>
}