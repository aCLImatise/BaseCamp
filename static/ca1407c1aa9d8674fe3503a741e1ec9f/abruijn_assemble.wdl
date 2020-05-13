version 1.0

task AbruijnAssemble {
  input {
    String kK
    Int mM
    Int xX
    Int vV
    Boolean dD
    String lL
    String oO
    String tT
    String? outOutAssembly
    String? coverageCoverage
  }
  command <<<
    abruijn-assemble \
      ~{outOutAssembly} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{true="-d" false="" dD} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{coverageCoverage}
  >>>
}