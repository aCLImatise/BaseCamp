version 1.0

task FidoGraph fileGammaBeta {
  input {
    String? alphaAlpha
    String? betaBeta
  }
  command <<<
    Fido graph file gamma beta \
      ~{alphaAlpha} \
      ~{betaBeta}
  >>>
}