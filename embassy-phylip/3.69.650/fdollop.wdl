version 1.0

task Fdollop {
  input {
    Boolean weightsWeights
    Boolean ancAncFile
    Boolean methodMethod
  }
  command <<<
    fdollop \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-ancfile" false="" ancAncFile} \
      ~{true="-method" false="" methodMethod}
  >>>
}