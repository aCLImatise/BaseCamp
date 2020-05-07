version 1.0

task TreebestMfa2aln {
  input {
    Boolean nN
    String? fastFastAAlign
  }
  command <<<
    treebest mfa2aln \
      ~{fastFastAAlign} \
      ~{true="-n" false="" nN}
  >>>
}