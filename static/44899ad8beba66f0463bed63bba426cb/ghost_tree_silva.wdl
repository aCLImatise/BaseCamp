version 1.0

task GhostTreeSilva {
  input {
    String? extractExtractFungi
  }
  command <<<
    ghost-tree silva \
      ~{extractExtractFungi}
  >>>
}