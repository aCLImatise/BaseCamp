version 1.0

task DeblurTrimSEQSFP {
  input {
    String? optionsOptions
    String? seqsSeqsFp
    String? outputOutputFp
  }
  command <<<
    deblur trim SEQS_FP \
      ~{optionsOptions} \
      ~{seqsSeqsFp} \
      ~{outputOutputFp}
  >>>
}