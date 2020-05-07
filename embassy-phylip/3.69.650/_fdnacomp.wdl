version 1.0

task _fdnacomp {
  input {
    Boolean weightsWeights
    Boolean outOutGrNo
  }
  command <<<
    _fdnacomp \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-outgrno" false="" outOutGrNo}
  >>>
}