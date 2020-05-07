version 1.0

task SeqtkMutfaIn.snp {
  input {
    String? inInFa
    String? inInSnp
  }
  command <<<
    seqtk mutfa in.snp \
      ~{inInFa} \
      ~{inInSnp}
  >>>
}