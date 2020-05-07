version 1.0

task _fprotpars {
  input {
    Boolean weightsWeights
    Boolean outOutGrNo
    Boolean doDoThreshold
    Boolean stepStepBox
    Boolean anAnCseq
  }
  command <<<
    _fprotpars \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-outgrno" false="" outOutGrNo} \
      ~{true="-dothreshold" false="" doDoThreshold} \
      ~{true="-stepbox" false="" stepStepBox} \
      ~{true="-ancseq" false="" anAnCseq}
  >>>
}