version 1.0

task GeneAssign.py {
  input {
    String? scgScgCovFile
    String? gammaGammaStarFile
    String? covCovFile
    String? epsilonEpsilonFile
  }
  command <<<
    GeneAssign.py \
      ~{scgScgCovFile} \
      ~{gammaGammaStarFile} \
      ~{covCovFile} \
      ~{epsilonEpsilonFile}
  >>>
}