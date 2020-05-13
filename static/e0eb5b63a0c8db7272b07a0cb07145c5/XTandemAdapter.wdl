version 1.0

task XTandemAdapter {
  input {
    File inIn
    File outOut
    File xmlXmlOut
    File databaseDatabase
    String xXTandemExecutable
    File defaultDefaultConfigFile
    Boolean ignoreIgnoreAdapterParam
    String precursorPrecursorMassTolerance
    String fragmentFragmentMassTolerance
    String precursorPrecursorErrorUnits
    String fragmentFragmentErrorUnits
    String maxMaxPrecursorCharge
    Boolean noNoIsotopeError
    String fixedFixedModifications
    String variableVariableModifications
    String minimumMinimumFragmentMz
    String enzymeEnzyme
    String missedMissedCleavages
    Boolean semiSemiCleavage
    String outputOutputResults
    String maxMaxValidExpect
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    XTandemAdapter \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(xmlXmlOut) then ("-xml_out " +  '"' + xmlXmlOut + '"') else ""} \
      ~{if defined(databaseDatabase) then ("-database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(xXTandemExecutable) then ("-xtandem_executable " +  '"' + xXTandemExecutable + '"') else ""} \
      ~{if defined(defaultDefaultConfigFile) then ("-default_config_file " +  '"' + defaultDefaultConfigFile + '"') else ""} \
      ~{true="-ignore_adapter_param" false="" ignoreIgnoreAdapterParam} \
      ~{if defined(precursorPrecursorMassTolerance) then ("-precursor_mass_tolerance " +  '"' + precursorPrecursorMassTolerance + '"') else ""} \
      ~{if defined(fragmentFragmentMassTolerance) then ("-fragment_mass_tolerance " +  '"' + fragmentFragmentMassTolerance + '"') else ""} \
      ~{if defined(precursorPrecursorErrorUnits) then ("-precursor_error_units " +  '"' + precursorPrecursorErrorUnits + '"') else ""} \
      ~{if defined(fragmentFragmentErrorUnits) then ("-fragment_error_units " +  '"' + fragmentFragmentErrorUnits + '"') else ""} \
      ~{if defined(maxMaxPrecursorCharge) then ("-max_precursor_charge " +  '"' + maxMaxPrecursorCharge + '"') else ""} \
      ~{true="-no_isotope_error" false="" noNoIsotopeError} \
      ~{if defined(fixedFixedModifications) then ("-fixed_modifications " +  '"' + fixedFixedModifications + '"') else ""} \
      ~{if defined(variableVariableModifications) then ("-variable_modifications " +  '"' + variableVariableModifications + '"') else ""} \
      ~{if defined(minimumMinimumFragmentMz) then ("-minimum_fragment_mz " +  '"' + minimumMinimumFragmentMz + '"') else ""} \
      ~{if defined(enzymeEnzyme) then ("-enzyme " +  '"' + enzymeEnzyme + '"') else ""} \
      ~{if defined(missedMissedCleavages) then ("-missed_cleavages " +  '"' + missedMissedCleavages + '"') else ""} \
      ~{true="-semi_cleavage" false="" semiSemiCleavage} \
      ~{if defined(outputOutputResults) then ("-output_results " +  '"' + outputOutputResults + '"') else ""} \
      ~{if defined(maxMaxValidExpect) then ("-max_valid_expect " +  '"' + maxMaxValidExpect + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}