version 1.0

task Tarchive2amos {
  input {
    String cC
    String mM
    String lL
    String iI
    Int readsReads
    Int readsReads
    String qualQual
  }
  command <<<
    tarchive2amos \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(readsReads) then ("- reads " +  '"' + readsReads + '"') else ""} \
      ~{if defined(readsReads) then ("- reads " +  '"' + readsReads + '"') else ""} \
      ~{if defined(qualQual) then ("-qual " +  '"' + qualQual + '"') else ""}
  >>>
}