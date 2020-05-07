version 1.0

task _fmix {
  input {
    Boolean weightsWeights
    Boolean ancAncFile
    Boolean mixMixFile
    Boolean methodMethod
  }
  command <<<
    _fmix \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-ancfile" false="" ancAncFile} \
      ~{true="-mixfile" false="" mixMixFile} \
      ~{true="-method" false="" methodMethod}
  >>>
}