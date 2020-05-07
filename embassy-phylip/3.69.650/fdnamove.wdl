version 1.0

task Fdnamove {
  input {
    Boolean weightsWeights
    Boolean outOutGrNo
    Boolean doDoThreshold
  }
  command <<<
    fdnamove \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-outgrno" false="" outOutGrNo} \
      ~{true="-dothreshold" false="" doDoThreshold}
  >>>
}