version 1.0

task _fdollop {
  input {
    Boolean weightsWeights
    Boolean ancAncFile
    Boolean methodMethod
  }
  command <<<
    _fdollop \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-ancfile" false="" ancAncFile} \
      ~{true="-method" false="" methodMethod}
  >>>
}