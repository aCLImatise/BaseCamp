version 1.0

task Heinz {
  input {
    String fdrFdr
    String aA
    String eE
    Int enumEnum
    Int fF
    String lambdaLambda
    Int mM
    Int maxMaxCuts
    String nN
    String oO
    Boolean pP
    String rR
    String sS
    Int tT
    Int verbosityVerbosity
    Boolean versionVersion
  }
  command <<<
    heinz \
      ~{if defined(fdrFdr) then ("-FDR " +  '"' + fdrFdr + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(enumEnum) then ("-enum " +  '"' + enumEnum + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(lambdaLambda) then ("-lambda " +  '"' + lambdaLambda + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(maxMaxCuts) then ("-maxCuts " +  '"' + maxMaxCuts + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{true="-version" false="" versionVersion}
  >>>
}