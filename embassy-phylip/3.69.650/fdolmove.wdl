version 1.0

task Fdolmove {
  input {
    Boolean weightsWeights
    Boolean ancAncFile
    Boolean factorFactorFile
    Boolean methodMethod
    Boolean doDoThreshold
  }
  command <<<
    fdolmove \
      ~{true="-weights" false="" weightsWeights} \
      ~{true="-ancfile" false="" ancAncFile} \
      ~{true="-factorfile" false="" factorFactorFile} \
      ~{true="-method" false="" methodMethod} \
      ~{true="-dothreshold" false="" doDoThreshold}
  >>>
}