version 1.0

task Fdnacomp {
  input {
    Boolean weightsWeights
    Boolean outOutGrNo
  }
  command <<<
    fdnacomp \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-outgrno" false="" outOutGrNo}
  >>>
}