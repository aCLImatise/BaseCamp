version 1.0

task DeblurDereplicateSEQSFP {
  input {
    String? optionsOptions
    String? seqsSeqsFp
    String? outputOutputFp
  }
  command <<<
    deblur dereplicate SEQS_FP \
      ~{optionsOptions} \
      ~{seqsSeqsFp} \
      ~{outputOutputFp}
  >>>
}