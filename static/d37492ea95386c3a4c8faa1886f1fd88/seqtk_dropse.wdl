version 1.0

task SeqtkDropse {
  input {
    String? inInFq
  }
  command <<<
    seqtk dropse \
      ~{inInFq}
  >>>
}