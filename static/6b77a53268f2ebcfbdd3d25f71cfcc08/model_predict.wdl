version 1.0

task ModelPredict {
  input {
    String iI
    String mM
    String oO
  }
  command <<<
    model predict \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}