version 1.0

task DeblurMultipleSeqAlignmentSEQSFP {
  input {
    String? optionsOptions
    String? seqsSeqsFp
    String? outputOutputFp
  }
  command <<<
    deblur multiple-seq-alignment SEQS_FP \
      ~{optionsOptions} \
      ~{seqsSeqsFp} \
      ~{outputOutputFp}
  >>>
}