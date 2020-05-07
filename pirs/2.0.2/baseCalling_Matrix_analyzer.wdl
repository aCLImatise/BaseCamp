version 1.0

task BaseCallingMatrixAnalyzer {
  input {
    String iI
    String oO
    String mM
    String xX
    Boolean bB
  }
  command <<<
    baseCalling_Matrix_analyzer \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{true="-B" false="" bB}
  >>>
}