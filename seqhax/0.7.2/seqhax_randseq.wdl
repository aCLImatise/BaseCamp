version 1.0

task SeqhaxRandseq {
  input {
    String nN
    String sS
    Int lL
    Boolean pP
    Boolean fF
  }
  command <<<
    seqhax randseq \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{true="-f" false="" fF}
  >>>
}