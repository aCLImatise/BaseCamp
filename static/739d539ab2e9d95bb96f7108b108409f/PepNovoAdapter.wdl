version 1.0

task PepNovoAdapter {
  input {
    File inIn
    File outOut
    File pepPepNovoExecutable
    File modelModelDirectory
    Boolean correctCorrectPm
    Boolean useUseSpectrumCharge
    Boolean useUseSpectrumMz
    Boolean noNoQualityFilter
    Float fragmentFragmentTolerance
    Float pmPmTolerance
    File modelModel
    Boolean digestDigest
    String tagTagLength
    String numNumSolutions
    String fixedFixedModifications
    String variableVariableModifications
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    PepNovoAdapter \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(pepPepNovoExecutable) then ("-pepnovo_executable " +  '"' + pepPepNovoExecutable + '"') else ""} \
      ~{if defined(modelModelDirectory) then ("-model_directory " +  '"' + modelModelDirectory + '"') else ""} \
      ~{true="-correct_pm" false="" correctCorrectPm} \
      ~{true="-use_spectrum_charge" false="" useUseSpectrumCharge} \
      ~{true="-use_spectrum_mz" false="" useUseSpectrumMz} \
      ~{true="-no_quality_filter" false="" noNoQualityFilter} \
      ~{if defined(fragmentFragmentTolerance) then ("-fragment_tolerance " +  '"' + fragmentFragmentTolerance + '"') else ""} \
      ~{if defined(pmPmTolerance) then ("-pm_tolerance " +  '"' + pmPmTolerance + '"') else ""} \
      ~{if defined(modelModel) then ("-model " +  '"' + modelModel + '"') else ""} \
      ~{true="-digest" false="" digestDigest} \
      ~{if defined(tagTagLength) then ("-tag_length " +  '"' + tagTagLength + '"') else ""} \
      ~{if defined(numNumSolutions) then ("-num_solutions " +  '"' + numNumSolutions + '"') else ""} \
      ~{if defined(fixedFixedModifications) then ("-fixed_modifications " +  '"' + fixedFixedModifications + '"') else ""} \
      ~{if defined(variableVariableModifications) then ("-variable_modifications " +  '"' + variableVariableModifications + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}