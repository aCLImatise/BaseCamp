version 1.0

task PIPmiRPRECURSOR {
  input {
    Int lL
    Int lL
    String sS
    String pP
    Int xX
    String rR
    Boolean dD
  }
  command <<<
    PIPmiR PRECURSOR \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(xX) then ("-X " +  '"' + xX + '"') else ""} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{true="-d" false="" dD}
  >>>
}