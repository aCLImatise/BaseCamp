version 1.0

task NovorAdapter {
  input {
    String executableExecutable
    File inIn
    File outOut
    String enzymeEnzyme
    String fragmentationFragmentation
    String massMassAnalyzer
    String fragmentFragmentMassTolerance
    String precursorPrecursorMassTolerance
    String precursorPrecursorErrorUnits
    String variableVariableModifications
    String fixedFixedModifications
    String forbiddenForbiddenResidues
    File novNovOrFile
    File javaJavaExecutable
    String javaJavaMemory
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    NovorAdapter \
      ~{if defined(executableExecutable) then ("-executable " +  '"' + executableExecutable + '"') else ""} \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(enzymeEnzyme) then ("-enzyme " +  '"' + enzymeEnzyme + '"') else ""} \
      ~{if defined(fragmentationFragmentation) then ("-fragmentation " +  '"' + fragmentationFragmentation + '"') else ""} \
      ~{if defined(massMassAnalyzer) then ("-massAnalyzer " +  '"' + massMassAnalyzer + '"') else ""} \
      ~{if defined(fragmentFragmentMassTolerance) then ("-fragment_mass_tolerance " +  '"' + fragmentFragmentMassTolerance + '"') else ""} \
      ~{if defined(precursorPrecursorMassTolerance) then ("-precursor_mass_tolerance " +  '"' + precursorPrecursorMassTolerance + '"') else ""} \
      ~{if defined(precursorPrecursorErrorUnits) then ("-precursor_error_units " +  '"' + precursorPrecursorErrorUnits + '"') else ""} \
      ~{if defined(variableVariableModifications) then ("-variable_modifications " +  '"' + variableVariableModifications + '"') else ""} \
      ~{if defined(fixedFixedModifications) then ("-fixed_modifications " +  '"' + fixedFixedModifications + '"') else ""} \
      ~{if defined(forbiddenForbiddenResidues) then ("-forbiddenResidues " +  '"' + forbiddenForbiddenResidues + '"') else ""} \
      ~{if defined(novNovOrFile) then ("-novorFile " +  '"' + novNovOrFile + '"') else ""} \
      ~{if defined(javaJavaExecutable) then ("-java_executable " +  '"' + javaJavaExecutable + '"') else ""} \
      ~{if defined(javaJavaMemory) then ("-java_memory " +  '"' + javaJavaMemory + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}