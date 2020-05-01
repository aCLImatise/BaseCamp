version 1.0

task MSGFPlusAdapter {
  input {
    File inIn
    File outOut
    File mzMzIdOut
    File executableExecutable
    File databaseDatabase
    Boolean addAddDecoys
    String precursorPrecursorMassTolerance
    String precursorPrecursorErrorUnits
    String isotopeIsotopeErrorRange
    String fragmentFragmentMethod
    String instrumentInstrument
    String enzymeEnzyme
    String protocolProtocol
    String trypticTryptic
    String minMinPrecursorCharge
    String maxMaxPrecursorCharge
    String minMinPeptideLength
    String maxMaxPeptideLength
    String matchesMatchesPerSpec
    Boolean addAddFeatures
    String maxMaxMods
    String fixedFixedModifications
    String variableVariableModifications
    File javaJavaExecutable
    String javaJavaMemory
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    MSGFPlusAdapter \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(mzMzIdOut) then ("-mzid_out " +  '"' + mzMzIdOut + '"') else ""} \
      ~{if defined(executableExecutable) then ("-executable " +  '"' + executableExecutable + '"') else ""} \
      ~{if defined(databaseDatabase) then ("-database " +  '"' + databaseDatabase + '"') else ""} \
      ~{true="-add_decoys" false="" addAddDecoys} \
      ~{if defined(precursorPrecursorMassTolerance) then ("-precursor_mass_tolerance " +  '"' + precursorPrecursorMassTolerance + '"') else ""} \
      ~{if defined(precursorPrecursorErrorUnits) then ("-precursor_error_units " +  '"' + precursorPrecursorErrorUnits + '"') else ""} \
      ~{if defined(isotopeIsotopeErrorRange) then ("-isotope_error_range " +  '"' + isotopeIsotopeErrorRange + '"') else ""} \
      ~{if defined(fragmentFragmentMethod) then ("-fragment_method " +  '"' + fragmentFragmentMethod + '"') else ""} \
      ~{if defined(instrumentInstrument) then ("-instrument " +  '"' + instrumentInstrument + '"') else ""} \
      ~{if defined(enzymeEnzyme) then ("-enzyme " +  '"' + enzymeEnzyme + '"') else ""} \
      ~{if defined(protocolProtocol) then ("-protocol " +  '"' + protocolProtocol + '"') else ""} \
      ~{if defined(trypticTryptic) then ("-tryptic " +  '"' + trypticTryptic + '"') else ""} \
      ~{if defined(minMinPrecursorCharge) then ("-min_precursor_charge " +  '"' + minMinPrecursorCharge + '"') else ""} \
      ~{if defined(maxMaxPrecursorCharge) then ("-max_precursor_charge " +  '"' + maxMaxPrecursorCharge + '"') else ""} \
      ~{if defined(minMinPeptideLength) then ("-min_peptide_length " +  '"' + minMinPeptideLength + '"') else ""} \
      ~{if defined(maxMaxPeptideLength) then ("-max_peptide_length " +  '"' + maxMaxPeptideLength + '"') else ""} \
      ~{if defined(matchesMatchesPerSpec) then ("-matches_per_spec " +  '"' + matchesMatchesPerSpec + '"') else ""} \
      ~{true="-add_features" false="" addAddFeatures} \
      ~{if defined(maxMaxMods) then ("-max_mods " +  '"' + maxMaxMods + '"') else ""} \
      ~{if defined(fixedFixedModifications) then ("-fixed_modifications " +  '"' + fixedFixedModifications + '"') else ""} \
      ~{if defined(variableVariableModifications) then ("-variable_modifications " +  '"' + variableVariableModifications + '"') else ""} \
      ~{if defined(javaJavaExecutable) then ("-java_executable " +  '"' + javaJavaExecutable + '"') else ""} \
      ~{if defined(javaJavaMemory) then ("-java_memory " +  '"' + javaJavaMemory + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}