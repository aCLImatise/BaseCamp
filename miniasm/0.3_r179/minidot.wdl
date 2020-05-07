version 1.0

task Minidot {
  input {
    Int mM
    Float iI
    Int sS
    Int wW
    Int fF
    Boolean lL
    Boolean dD
    String? inInPaf
  }
  command <<<
    minidot \
      ~{inInPaf} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-L" false="" lL} \
      ~{true="-D" false="" dD}
  >>>
}