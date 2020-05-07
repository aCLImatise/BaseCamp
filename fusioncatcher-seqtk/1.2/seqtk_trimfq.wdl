version 1.0

task SeqtkTrimfq {
  input {
    Float qQ
    Int lL
    Int sS
    Int bB
    Int eE
    Int bB
    Int eE
    String? inInFq
  }
  command <<<
    seqtk trimfq \
      ~{inInFq} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(bB) then ("-B " +  '"' + bB + '"') else ""} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""}
  >>>
}