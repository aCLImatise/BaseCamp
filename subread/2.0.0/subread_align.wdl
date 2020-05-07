version 1.0

task SubreadAlign {
  input {
    String iI
    String rR
    Int tT
    String oO
    String rR
    Boolean samSamInput
    Boolean bamBamInput
    Boolean samSamOutput
    Boolean pP
    Int nN
    Int mM
    Int pP
    Int mM
    Boolean multiMultiMapping
    Int bB
    Int iI
    Boolean complexComplexIndels
    Int trim5Trim5
    Int trim3Trim3
    Int dD
    Int dD
    Boolean sS
    Int tT
    String rgRgId
    String rgRg
    Boolean bB
    Int dpDpMatch
    Boolean svSv
    Boolean vV
  }
  command <<<
    subread-align \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{true="--SAMinput" false="" samSamInput} \
      ~{true="--BAMinput" false="" bamBamInput} \
      ~{true="--SAMoutput" false="" samSamOutput} \
      ~{true="-P" false="" pP} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{true="--multiMapping" false="" multiMultiMapping} \
      ~{if defined(bB) then ("-B " +  '"' + bB + '"') else ""} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{true="--complexIndels" false="" complexComplexIndels} \
      ~{if defined(trim5Trim5) then ("--trim5 " +  '"' + trim5Trim5 + '"') else ""} \
      ~{if defined(trim3Trim3) then ("--trim3 " +  '"' + trim3Trim3 + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(dD) then ("-D " +  '"' + dD + '"') else ""} \
      ~{true="-S" false="" sS} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(rgRgId) then ("--rg-id " +  '"' + rgRgId + '"') else ""} \
      ~{if defined(rgRg) then ("--rg " +  '"' + rgRg + '"') else ""} \
      ~{true="-b" false="" bB} \
      ~{if defined(dpDpMatch) then ("--DPMatch " +  '"' + dpDpMatch + '"') else ""} \
      ~{true="--sv" false="" svSv} \
      ~{true="-v" false="" vV}
  >>>
}