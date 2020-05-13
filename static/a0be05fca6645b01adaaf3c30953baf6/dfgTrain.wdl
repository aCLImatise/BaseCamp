version 1.0

task DfgTrain {
  input {
    Boolean pP
    Boolean dD
    Boolean iI
    Boolean lL
    Boolean eE
    String dotfileDotfile
    Boolean sS
    Boolean oO
    Boolean tT
    String factorFactorGraphFile
    String variablesVariablesFile
    String stateStateMapFile
    String facFacPotFile
    String subSubVarFile
    Boolean writeWriteInfo
    String? inputInputVarDataTab
    String? inputInputFacDataTab
  }
  command <<<
    dfgTrain \
      ~{inputInputVarDataTab} \
      ~{true="-p" false="" pP} \
      ~{true="-d" false="" dD} \
      ~{true="-i" false="" iI} \
      ~{true="-l" false="" lL} \
      ~{true="-e" false="" eE} \
      ~{if defined(dotfileDotfile) then ("--dotFile " +  '"' + dotfileDotfile + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{true="-o" false="" oO} \
      ~{true="-t" false="" tT} \
      ~{if defined(factorFactorGraphFile) then ("--factorGraphFile " +  '"' + factorFactorGraphFile + '"') else ""} \
      ~{if defined(variablesVariablesFile) then ("--variablesFile " +  '"' + variablesVariablesFile + '"') else ""} \
      ~{if defined(stateStateMapFile) then ("--stateMapFile " +  '"' + stateStateMapFile + '"') else ""} \
      ~{if defined(facFacPotFile) then ("--facPotFile " +  '"' + facFacPotFile + '"') else ""} \
      ~{if defined(subSubVarFile) then ("--subVarFile " +  '"' + subSubVarFile + '"') else ""} \
      ~{true="--writeInfo" false="" writeWriteInfo} \
      ~{inputInputFacDataTab}
  >>>
}