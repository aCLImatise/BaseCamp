version 1.0

task EcoPCR {
  input {
    String dD
    String lL
    String lL
    String eE
    String rR
    String iI
    Boolean kK
    String? oligo1Oligo1
    String? oligo2Oligo2
  }
  command <<<
    ecoPCR \
      ~{oligo1Oligo1} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{true="-k" false="" kK} \
      ~{oligo2Oligo2}
  >>>
}