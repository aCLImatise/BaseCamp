version 1.0

task _fdolpenny {
  input {
    Boolean weightsWeights
    Boolean ancAncFile
    Boolean doDoThreshold
  }
  command <<<
    _fdolpenny \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-ancfile" false="" ancAncFile} \
      ~{true="-dothreshold" false="" doDoThreshold}
  >>>
}