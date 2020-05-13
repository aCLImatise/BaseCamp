version 1.0

task ComputeUniformPriors {
  input {
    String? computeComputeUniformPrior
    String? priorPriorValue
    String? pspPspFile
  }
  command <<<
    compute-uniform-priors \
      ~{computeComputeUniformPrior} \
      ~{priorPriorValue} \
      ~{pspPspFile}
  >>>
}