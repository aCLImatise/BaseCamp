version 1.0

task _fdnamove {
  input {
    Boolean weightsWeights
    Boolean outOutGrNo
    Boolean doDoThreshold
  }
  command <<<
    _fdnamove \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-outgrno" false="" outOutGrNo} \
      ~{true="-dothreshold" false="" doDoThreshold}
  >>>
}