version 1.0

task SeqtkTrimfq {
  input {
    Float qQ
    Int lL
    Int bB
    Int eE
    Int lL
    Boolean qQ
    String? inInFq
  }
  command <<<
    seqtk trimfq \
      ~{inInFq} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{true="-Q" false="" qQ}
  >>>
}