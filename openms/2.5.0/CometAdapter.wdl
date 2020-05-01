version 1.0

task CometAdapter {
  input {
    File inIn
    File outOut
    File databaseDatabase
    String cometCometExecutable
    String cometCometVersion
    File pinPinOut
    File defaultDefaultParamsFile
    String precursorPrecursorMassTolerance
    String precursorPrecursorErrorUnits
    String isotopeIsotopeError
    String enzymeEnzyme
    String numNumEnzymeTermini
    String allowedAllowedMissedCleavages
    String numNumHits
    Boolean precursorPrecursorCharge
    String overrideOverrideCharge
    String msMsLevel
    String activationActivationMethod
    String maxMaxFragmentCharge
    Boolean clipClipNTermMethionine
    String fixedFixedModifications
    String variableVariableModifications
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    CometAdapter \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(databaseDatabase) then ("-database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(cometCometExecutable) then ("-comet_executable " +  '"' + cometCometExecutable + '"') else ""} \
      ~{if defined(cometCometVersion) then ("-comet_version " +  '"' + cometCometVersion + '"') else ""} \
      ~{if defined(pinPinOut) then ("-pin_out " +  '"' + pinPinOut + '"') else ""} \
      ~{if defined(defaultDefaultParamsFile) then ("-default_params_file " +  '"' + defaultDefaultParamsFile + '"') else ""} \
      ~{if defined(precursorPrecursorMassTolerance) then ("-precursor_mass_tolerance " +  '"' + precursorPrecursorMassTolerance + '"') else ""} \
      ~{if defined(precursorPrecursorErrorUnits) then ("-precursor_error_units " +  '"' + precursorPrecursorErrorUnits + '"') else ""} \
      ~{if defined(isotopeIsotopeError) then ("-isotope_error " +  '"' + isotopeIsotopeError + '"') else ""} \
      ~{if defined(enzymeEnzyme) then ("-enzyme " +  '"' + enzymeEnzyme + '"') else ""} \
      ~{if defined(numNumEnzymeTermini) then ("-num_enzyme_termini " +  '"' + numNumEnzymeTermini + '"') else ""} \
      ~{if defined(allowedAllowedMissedCleavages) then ("-allowed_missed_cleavages " +  '"' + allowedAllowedMissedCleavages + '"') else ""} \
      ~{if defined(numNumHits) then ("-num_hits " +  '"' + numNumHits + '"') else ""} \
      ~{true="-precursor_charge" false="" precursorPrecursorCharge} \
      ~{if defined(overrideOverrideCharge) then ("-override_charge " +  '"' + overrideOverrideCharge + '"') else ""} \
      ~{if defined(msMsLevel) then ("-ms_level " +  '"' + msMsLevel + '"') else ""} \
      ~{if defined(activationActivationMethod) then ("-activation_method " +  '"' + activationActivationMethod + '"') else ""} \
      ~{if defined(maxMaxFragmentCharge) then ("-max_fragment_charge " +  '"' + maxMaxFragmentCharge + '"') else ""} \
      ~{if defined(clipClipNTermMethionine) then ("-clip_nterm_methionine " +  '"' + clipClipNTermMethionine + '"') else ""} \
      ~{if defined(fixedFixedModifications) then ("-fixed_modifications " +  '"' + fixedFixedModifications + '"') else ""} \
      ~{if defined(variableVariableModifications) then ("-variable_modifications " +  '"' + variableVariableModifications + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}