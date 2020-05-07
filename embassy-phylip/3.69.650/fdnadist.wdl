version 1.0

task Fdnadist {
  input {
    Boolean methodMethod
    Boolean weightsWeights
  }
  command <<<
    fdnadist \
      ~{true="-method" false="" methodMethod} \
      ~{true="-weights" false="" weightsWeights}
  >>>
}