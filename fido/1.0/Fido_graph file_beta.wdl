version 1.0

task FidoGraph fileBeta {
  input {
    String? gammaGamma
    String? alphaAlpha
    String? betaBeta
  }
  command <<<
    Fido graph file beta \
      ~{gammaGamma} \
      ~{alphaAlpha} \
      ~{betaBeta}
  >>>
}