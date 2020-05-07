version 1.0

task SeqtkListhet {
  input {
    String? inInFa
  }
  command <<<
    seqtk listhet \
      ~{inInFa}
  >>>
}