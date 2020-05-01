version 1.0

task LuciphorAdapter {
  input {
    File inIn
    File idId
    File outOut
    File executableExecutable
    String fragmentFragmentMethod
    String fragmentFragmentMassTolerance
    String fragmentFragmentErrorUnits
    String minMinMz
    String targetTargetModifications
    String neutralNeutralLosses
    String decoyDecoyMass
    String decoyDecoyNeutralLosses
    String maxMaxChargeState
    String maxMaxPeptideLength
    String maxMaxNumPerm
    String modelingModelingScoreThreshold
    String scoringScoringThreshold
    String minMinNumPsmsModel
    String numNumThreads
    String runRunMode
    File javaJavaExecutable
    String javaJavaMemory
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    LuciphorAdapter \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(idId) then ("-id " +  '"' + idId + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(executableExecutable) then ("-executable " +  '"' + executableExecutable + '"') else ""} \
      ~{if defined(fragmentFragmentMethod) then ("-fragment_method " +  '"' + fragmentFragmentMethod + '"') else ""} \
      ~{if defined(fragmentFragmentMassTolerance) then ("-fragment_mass_tolerance " +  '"' + fragmentFragmentMassTolerance + '"') else ""} \
      ~{if defined(fragmentFragmentErrorUnits) then ("-fragment_error_units " +  '"' + fragmentFragmentErrorUnits + '"') else ""} \
      ~{if defined(minMinMz) then ("-min_mz " +  '"' + minMinMz + '"') else ""} \
      ~{if defined(targetTargetModifications) then ("-target_modifications " +  '"' + targetTargetModifications + '"') else ""} \
      ~{if defined(neutralNeutralLosses) then ("-neutral_losses " +  '"' + neutralNeutralLosses + '"') else ""} \
      ~{if defined(decoyDecoyMass) then ("-decoy_mass " +  '"' + decoyDecoyMass + '"') else ""} \
      ~{if defined(decoyDecoyNeutralLosses) then ("-decoy_neutral_losses " +  '"' + decoyDecoyNeutralLosses + '"') else ""} \
      ~{if defined(maxMaxChargeState) then ("-max_charge_state " +  '"' + maxMaxChargeState + '"') else ""} \
      ~{if defined(maxMaxPeptideLength) then ("-max_peptide_length " +  '"' + maxMaxPeptideLength + '"') else ""} \
      ~{if defined(maxMaxNumPerm) then ("-max_num_perm " +  '"' + maxMaxNumPerm + '"') else ""} \
      ~{if defined(modelingModelingScoreThreshold) then ("-modeling_score_threshold " +  '"' + modelingModelingScoreThreshold + '"') else ""} \
      ~{if defined(scoringScoringThreshold) then ("-scoring_threshold " +  '"' + scoringScoringThreshold + '"') else ""} \
      ~{if defined(minMinNumPsmsModel) then ("-min_num_psms_model " +  '"' + minMinNumPsmsModel + '"') else ""} \
      ~{if defined(numNumThreads) then ("-num_threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(runRunMode) then ("-run_mode " +  '"' + runRunMode + '"') else ""} \
      ~{if defined(javaJavaExecutable) then ("-java_executable " +  '"' + javaJavaExecutable + '"') else ""} \
      ~{if defined(javaJavaMemory) then ("-java_memory " +  '"' + javaJavaMemory + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}