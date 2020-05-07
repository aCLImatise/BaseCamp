version 1.0

task SOAPdenovoTrans31merContig {
  input {
    Boolean gG
    Boolean eE
    Boolean mM
  }
  command <<<
    SOAPdenovo-Trans-31mer contig \
      ~{true="-g" false="" gG} \
      ~{true="-e" false="" eE} \
      ~{true="-M" false="" mM}
  >>>
}