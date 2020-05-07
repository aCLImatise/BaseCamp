version 1.0

task MakeConsensus {
  input {
    Boolean aA
    Boolean aA
    Boolean bB
    Boolean bB
    Boolean cC
    Boolean cC
    String eE
    String eE
    Boolean fF
    String iI
    Boolean lL
    String nN
    String oO
    Boolean pP
    Boolean sS
    Boolean sS
    Boolean tT
    Boolean uU
    String vV
    String wW
    String xX
    String? tigTigFile
    String? bankBankName
  }
  command <<<
    make-consensus \
      ~{tigTigFile} \
      ~{true="-a" false="" aA} \
      ~{true="-A" false="" aA} \
      ~{true="-b" false="" bB} \
      ~{true="-B" false="" bB} \
      ~{true="-c" false="" cC} \
      ~{true="-C" false="" cC} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{true="-L" false="" lL} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-P" false="" pP} \
      ~{true="-s" false="" sS} \
      ~{true="-S" false="" sS} \
      ~{true="-T" false="" tT} \
      ~{true="-u" false="" uU} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{if defined(xX) then ("-x " +  '"' + xX + '"') else ""} \
      ~{bankBankName}
  >>>
}