version 1.0

task BwaFastmap {
  input {
    Int lL
    Int wW
    Int iI
    Int lL
    Int iI
    String? idxIdxBase
    String? inInFq
  }
  command <<<
    bwa fastmap \
      ~{idxIdxBase} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{inInFq}
  >>>
}