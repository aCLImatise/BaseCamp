version 1.0

task FidoGraph fileAlpha {
  input {
    String? gammaGamma
    String? alphaAlpha
    String? betaBeta
  }
  command <<<
    Fido graph file alpha \
      ~{gammaGamma} \
      ~{alphaAlpha} \
      ~{betaBeta}
  >>>
}