version 1.0

task DeblurRemoveChimerasDenovoOPTIONSOUTPUTFP {
  input {
    String? seqsSeqsFp
    String? outputOutputFp
  }
  command <<<
    deblur remove-chimeras-denovo OPTIONS OUTPUT_FP \
      ~{seqsSeqsFp} \
      ~{outputOutputFp}
  >>>
}