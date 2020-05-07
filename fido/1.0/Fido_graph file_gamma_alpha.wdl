version 1.0

task FidoGraph fileGammaAlpha {
  input {
    String? betaBeta
  }
  command <<<
    Fido graph file gamma alpha \
      ~{betaBeta}
  >>>
}