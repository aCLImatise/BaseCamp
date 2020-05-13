version 1.0

task FidoBeta {
  input {
    String? graphGraphFile
    String? gammaGamma
    String? alphaAlpha
    String? betaBeta
  }
  command <<<
    Fido beta \
      ~{graphGraphFile} \
      ~{gammaGamma} \
      ~{alphaAlpha} \
      ~{betaBeta}
  >>>
}