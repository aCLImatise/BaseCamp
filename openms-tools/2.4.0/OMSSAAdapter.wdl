version 1.0

task OMSSAAdapter {
  input {
    File inIn
    File outOut
    String precursorPrecursorMassTolerance
    String precursorPrecursorErrorUnits
    String fragmentFragmentMassTolerance
    String databaseDatabase
    String minMinPrecursorCharge
    String maxMaxPrecursorCharge
    String fixedFixedModifications
    String variableVariableModifications
    String omOmSsaExecutable
    Int vV
    String enzymeEnzyme
    Int hlHl
    Float heHe
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    OMSSAAdapter \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(precursorPrecursorMassTolerance) then ("-precursor_mass_tolerance " +  '"' + precursorPrecursorMassTolerance + '"') else ""} \
      ~{if defined(precursorPrecursorErrorUnits) then ("-precursor_error_units " +  '"' + precursorPrecursorErrorUnits + '"') else ""} \
      ~{if defined(fragmentFragmentMassTolerance) then ("-fragment_mass_tolerance " +  '"' + fragmentFragmentMassTolerance + '"') else ""} \
      ~{if defined(databaseDatabase) then ("-database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(minMinPrecursorCharge) then ("-min_precursor_charge " +  '"' + minMinPrecursorCharge + '"') else ""} \
      ~{if defined(maxMaxPrecursorCharge) then ("-max_precursor_charge " +  '"' + maxMaxPrecursorCharge + '"') else ""} \
      ~{if defined(fixedFixedModifications) then ("-fixed_modifications " +  '"' + fixedFixedModifications + '"') else ""} \
      ~{if defined(variableVariableModifications) then ("-variable_modifications " +  '"' + variableVariableModifications + '"') else ""} \
      ~{if defined(omOmSsaExecutable) then ("-omssa_executable " +  '"' + omOmSsaExecutable + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{if defined(enzymeEnzyme) then ("-enzyme " +  '"' + enzymeEnzyme + '"') else ""} \
      ~{if defined(hlHl) then ("-hl " +  '"' + hlHl + '"') else ""} \
      ~{if defined(heHe) then ("-he " +  '"' + heHe + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}