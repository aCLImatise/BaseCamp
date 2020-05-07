version 1.0

task FidoAlpha {
  input {
    String? graphGraphFile
    String? gammaGamma
    String? alphaAlpha
    String? betaBeta
  }
  command <<<
    Fido alpha \
      ~{graphGraphFile} \
      ~{gammaGamma} \
      ~{alphaAlpha} \
      ~{betaBeta}
  >>>
}