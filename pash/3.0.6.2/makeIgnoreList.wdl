version 1.0

task MakeIgnoreList {
  input {
    String iI
    String oO
    Int cC
    Int mM
    String? makeMakeIgnoreListExe
  }
  command <<<
    makeIgnoreList \
      ~{makeMakeIgnoreListExe} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""}
  >>>
}