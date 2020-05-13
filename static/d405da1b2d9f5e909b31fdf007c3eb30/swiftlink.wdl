version 1.0

task Swiftlink {
  input {
    String outputOutput
    String iI
    String bB
    String sS
    String xX
    Float lL
    String nN
    String rR
    Boolean tT
    String pP
    Boolean eE
    Float fF
    Float wW
    Float kK
    String uU
    String cC
    Boolean gG
    Boolean vV
    String? optionsOptions
  }
  command <<<
    swiftlink \
      ~{optionsOptions} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{true="-T" false="" tT} \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""} \
      ~{true="-e" false="" eE} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(uU) then ("-u " +  '"' + uU + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{true="-g" false="" gG} \
      ~{true="-v" false="" vV}
  >>>
}