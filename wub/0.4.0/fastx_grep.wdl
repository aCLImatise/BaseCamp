version 1.0

task FastxGrep.py {
  input {
    String iI
    String oO
    String nN
    String? inputInputFastX
    String? outputOutputFastX
  }
  command <<<
    fastx_grep.py \
      ~{inputInputFastX} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{outputOutputFastX}
  >>>
}