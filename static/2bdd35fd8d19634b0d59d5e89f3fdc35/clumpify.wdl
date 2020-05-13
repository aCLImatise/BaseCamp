version 1.0

task Clumpify.sh {
  input {
    String? novaNovaSeq
  }
  command <<<
    clumpify.sh \
      ~{novaNovaSeq}
  >>>
}