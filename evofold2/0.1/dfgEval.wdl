version 1.0

task DfgEval {
  input {
    Boolean oO
    Boolean nN
    Boolean mM
    String expExpFile
    Boolean pP
    Boolean ppPpSumOther
    Boolean lL
    String mpsMpsVars
    String ppPpVars
    Boolean sS
    String factorFactorGraphFile
    String variablesVariablesFile
    String stateStateMapFile
    String facFacPotFile
    String subSubVarFile
    String? inputInputVarDataTab
    String? inputInputFacDataTab
  }
  command <<<
    dfgEval \
      ~{inputInputVarDataTab} \
      ~{true="-o" false="" oO} \
      ~{true="-n" false="" nN} \
      ~{true="-m" false="" mM} \
      ~{if defined(expExpFile) then ("--expFile " +  '"' + expExpFile + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{true="--ppSumOther" false="" ppPpSumOther} \
      ~{true="-l" false="" lL} \
      ~{if defined(mpsMpsVars) then ("--mpsVars " +  '"' + mpsMpsVars + '"') else ""} \
      ~{if defined(ppPpVars) then ("--ppVars " +  '"' + ppPpVars + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{if defined(factorFactorGraphFile) then ("--factorGraphFile " +  '"' + factorFactorGraphFile + '"') else ""} \
      ~{if defined(variablesVariablesFile) then ("--variablesFile " +  '"' + variablesVariablesFile + '"') else ""} \
      ~{if defined(stateStateMapFile) then ("--stateMapFile " +  '"' + stateStateMapFile + '"') else ""} \
      ~{if defined(facFacPotFile) then ("--facPotFile " +  '"' + facFacPotFile + '"') else ""} \
      ~{if defined(subSubVarFile) then ("--subVarFile " +  '"' + subSubVarFile + '"') else ""} \
      ~{inputInputFacDataTab}
  >>>
}