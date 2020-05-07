version 1.0

task SeqtkRename {
  input {
    String? inInFq
    String? prefixPrefix
  }
  command <<<
    seqtk rename \
      ~{inInFq} \
      ~{prefixPrefix}
  >>>
}