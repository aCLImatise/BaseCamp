version 1.0

task Pepquery {
  input {
    Boolean aaAa
    String anAnNo
    String cC
    String cpuCpu
    String dbDb
    Boolean decoyDecoy
    String eE
    String fF
    String fixFixMod
    String fragmentFragmentMethod
    Boolean hcHc
    String iI
    String itItOl
    String mM
    String maxMaxCharge
    String maxlengthMaxlength
    String maxMaxVar
    String minMinCharge
    String minlengthMinlength
    String minMinPeaks
    String minMinScore
    String msMs
    String nN
    String oO
    String pepPep
    String prefixPrefix
    Boolean printPrintPtm
    String tT
    String tagTag
    String toToL
    String toToLu
    Boolean tpTp
    Boolean umUm
    String varmodVarmod
  }
  command <<<
    pepquery \
      ~{true="-aa" false="" aaAa} \
      ~{if defined(anAnNo) then ("-anno " +  '"' + anAnNo + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(cpuCpu) then ("-cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{if defined(dbDb) then ("-db " +  '"' + dbDb + '"') else ""} \
      ~{true="-decoy" false="" decoyDecoy} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(fixFixMod) then ("-fixMod " +  '"' + fixFixMod + '"') else ""} \
      ~{if defined(fragmentFragmentMethod) then ("-fragmentMethod " +  '"' + fragmentFragmentMethod + '"') else ""} \
      ~{true="-hc" false="" hcHc} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(itItOl) then ("-itol " +  '"' + itItOl + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(maxMaxCharge) then ("-maxCharge " +  '"' + maxMaxCharge + '"') else ""} \
      ~{if defined(maxlengthMaxlength) then ("-maxLength " +  '"' + maxlengthMaxlength + '"') else ""} \
      ~{if defined(maxMaxVar) then ("-maxVar " +  '"' + maxMaxVar + '"') else ""} \
      ~{if defined(minMinCharge) then ("-minCharge " +  '"' + minMinCharge + '"') else ""} \
      ~{if defined(minlengthMinlength) then ("-minLength " +  '"' + minlengthMinlength + '"') else ""} \
      ~{if defined(minMinPeaks) then ("-minPeaks " +  '"' + minMinPeaks + '"') else ""} \
      ~{if defined(minMinScore) then ("-minScore " +  '"' + minMinScore + '"') else ""} \
      ~{if defined(msMs) then ("-ms " +  '"' + msMs + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(pepPep) then ("-pep " +  '"' + pepPep + '"') else ""} \
      ~{if defined(prefixPrefix) then ("-prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="-printPTM" false="" printPrintPtm} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(tagTag) then ("-tag " +  '"' + tagTag + '"') else ""} \
      ~{if defined(toToL) then ("-tol " +  '"' + toToL + '"') else ""} \
      ~{if defined(toToLu) then ("-tolu " +  '"' + toToLu + '"') else ""} \
      ~{true="-tp" false="" tpTp} \
      ~{true="-um" false="" umUm} \
      ~{if defined(varmodVarmod) then ("-varMod " +  '"' + varmodVarmod + '"') else ""}
  >>>
}