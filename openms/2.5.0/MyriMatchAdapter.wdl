version 1.0

task MyriMatchAdapter {
  input {
    File inIn
    File outOut
    String precursorPrecursorMassTolerance
    String precursorPrecursorMassToleranceUnit
    Boolean precursorPrecursorMassToleranceAvg
    String fragmentFragmentMassTolerance
    String fragmentFragmentMassToleranceUnit
    String databaseDatabase
    String fixedFixedModifications
    String variableVariableModifications
    String myMyRiMatchExecutable
    String numNumChargeStates
    String ticTicCutOffPercentage
    String maxMaxDynamicMods
    String maxMaxResultRank
    String cleavageCleavageRules
    String minMinTerminiCleavages
    String maxMaxMissedCleavages
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    MyriMatchAdapter \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(precursorPrecursorMassTolerance) then ("-precursor_mass_tolerance " +  '"' + precursorPrecursorMassTolerance + '"') else ""} \
      ~{if defined(precursorPrecursorMassToleranceUnit) then ("-precursor_mass_tolerance_unit " +  '"' + precursorPrecursorMassToleranceUnit + '"') else ""} \
      ~{true="-precursor_mass_tolerance_avg" false="" precursorPrecursorMassToleranceAvg} \
      ~{if defined(fragmentFragmentMassTolerance) then ("-fragment_mass_tolerance " +  '"' + fragmentFragmentMassTolerance + '"') else ""} \
      ~{if defined(fragmentFragmentMassToleranceUnit) then ("-fragment_mass_tolerance_unit " +  '"' + fragmentFragmentMassToleranceUnit + '"') else ""} \
      ~{if defined(databaseDatabase) then ("-database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(fixedFixedModifications) then ("-fixed_modifications " +  '"' + fixedFixedModifications + '"') else ""} \
      ~{if defined(variableVariableModifications) then ("-variable_modifications " +  '"' + variableVariableModifications + '"') else ""} \
      ~{if defined(myMyRiMatchExecutable) then ("-myrimatch_executable " +  '"' + myMyRiMatchExecutable + '"') else ""} \
      ~{if defined(numNumChargeStates) then ("-NumChargeStates " +  '"' + numNumChargeStates + '"') else ""} \
      ~{if defined(ticTicCutOffPercentage) then ("-TicCutoffPercentage " +  '"' + ticTicCutOffPercentage + '"') else ""} \
      ~{if defined(maxMaxDynamicMods) then ("-MaxDynamicMods " +  '"' + maxMaxDynamicMods + '"') else ""} \
      ~{if defined(maxMaxResultRank) then ("-MaxResultRank " +  '"' + maxMaxResultRank + '"') else ""} \
      ~{if defined(cleavageCleavageRules) then ("-CleavageRules " +  '"' + cleavageCleavageRules + '"') else ""} \
      ~{if defined(minMinTerminiCleavages) then ("-MinTerminiCleavages " +  '"' + minMinTerminiCleavages + '"') else ""} \
      ~{if defined(maxMaxMissedCleavages) then ("-MaxMissedCleavages " +  '"' + maxMaxMissedCleavages + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}