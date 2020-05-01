version 1.0

task Fdolpenny {
  input {
    Boolean weightsWeights
    Boolean ancAncFile
    Boolean doDoThreshold
  }
  command <<<
    fdolpenny \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-ancfile" false="" ancAncFile} \
      ~{true="-dothreshold" false="" doDoThreshold}
  >>>
}