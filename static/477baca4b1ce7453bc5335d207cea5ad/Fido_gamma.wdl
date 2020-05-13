version 1.0

task FidoGamma {
  input {
    String? graphGraphFile
    String? gammaGamma
    String? alphaAlpha
    String? betaBeta
  }
  command <<<
    Fido gamma \
      ~{graphGraphFile} \
      ~{gammaGamma} \
      ~{alphaAlpha} \
      ~{betaBeta}
  >>>
}