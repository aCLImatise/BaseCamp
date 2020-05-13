version 1.0

task SeqtkFamaskSrc.fa {
  input {
    String? maskMaskFa
  }
  command <<<
    seqtk famask src.fa \
      ~{maskMaskFa}
  >>>
}