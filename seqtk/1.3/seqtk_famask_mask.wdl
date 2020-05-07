version 1.0

task SeqtkFamaskMask.fa {
  input {
    String? srcSrcFa
    String? maskMaskFa
  }
  command <<<
    seqtk famask mask.fa \
      ~{srcSrcFa} \
      ~{maskMaskFa}
  >>>
}