version 1.0

task _fdnadist {
  input {
    Boolean methodMethod
    Boolean weightsWeights
  }
  command <<<
    _fdnadist \
      ~{true="-method" false="" methodMethod} \
      ~{true="-weights" false="" weightsWeights}
  >>>
}