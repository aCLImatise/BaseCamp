version 1.0

task Spoa {
  input {
    Int mM
    Int nN
    Int gG
    Int eE
    Int qQ
    Int cC
    Int algorithmAlgorithm
    Int resultResult
    File dotDot
  }
  command <<<
    spoa \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(algorithmAlgorithm) then ("--algorithm " +  '"' + algorithmAlgorithm + '"') else ""} \
      ~{if defined(resultResult) then ("--result " +  '"' + resultResult + '"') else ""} \
      ~{if defined(dotDot) then ("--dot " +  '"' + dotDot + '"') else ""}
  >>>
}