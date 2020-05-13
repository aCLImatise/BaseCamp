version 1.0

task SentieonBwaFastmap {
  input {
    Int lL
    Int wW
    Int iI
    Int lL
    Int iI
    String? bwaBwa
    String? fastFastMap
    String? idxIdxBase
    String? inInFq
  }
  command <<<
    sentieon-bwa fastmap \
      ~{bwaBwa} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{fastFastMap} \
      ~{idxIdxBase} \
      ~{inInFq}
  >>>
}