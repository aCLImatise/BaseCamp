version 1.0

task SeqtkRandbase {
  input {
    String? inInFa
  }
  command <<<
    seqtk randbase \
      ~{inInFa}
  >>>
}