version 1.0

task AssayGeneratorMetabo {
  input {
    String executableExecutable
    Boolean inIn
    Boolean inInId
    File outOut
    String fragmentFragmentAnnotation
    String methodMethod
    Boolean useUseExactMass
    Boolean excludeExcludeMs2Precursor
    String precursorPrecursorMzDistance
    String precursorPrecursorRtTolerance
    Boolean useUseKnownUnknowns
    Int minMinTransitions
    Int maxMaxTransitions
    String cosineCosineSimilarityThreshold
    String transitionTransitionThreshold
    Boolean deDeIsoToPing
    Boolean deDeIsoToPing
    Boolean deDeIsoToPing
    Boolean deDeIsoToPing
    Boolean deDeIsoToPing
    Boolean deDeIsoToPing
    Boolean deDeIsoToPing
    Boolean deDeIsoToPing
    Boolean deDeIsoToPing
    Boolean preprocessingPreprocessing
    Boolean preprocessingPreprocessing
    Boolean preprocessingPreprocessing
    Boolean preprocessingPreprocessing
    Boolean preprocessingPreprocessing
    Boolean siriusSirius
    Boolean siriusSirius
    Boolean siriusSirius
    Boolean siriusSirius
    Boolean siriusSirius
    Boolean siriusSirius
    Boolean siriusSirius
    Boolean siriusSirius
    Boolean siriusSirius
    Boolean siriusSirius
    Boolean siriusSirius
    Boolean siriusSirius
    Directory outOutWorkspaceDirectory
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    AssayGeneratorMetabo \
      ~{if defined(executableExecutable) then ("-executable " +  '"' + executableExecutable + '"') else ""} \
      ~{true="-in" false="" inIn} \
      ~{true="-in_id" false="" inInId} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(fragmentFragmentAnnotation) then ("-fragment_annotation " +  '"' + fragmentFragmentAnnotation + '"') else ""} \
      ~{if defined(methodMethod) then ("-method " +  '"' + methodMethod + '"') else ""} \
      ~{true="-use_exact_mass" false="" useUseExactMass} \
      ~{true="-exclude_ms2_precursor" false="" excludeExcludeMs2Precursor} \
      ~{if defined(precursorPrecursorMzDistance) then ("-precursor_mz_distance " +  '"' + precursorPrecursorMzDistance + '"') else ""} \
      ~{if defined(precursorPrecursorRtTolerance) then ("-precursor_rt_tolerance " +  '"' + precursorPrecursorRtTolerance + '"') else ""} \
      ~{true="-use_known_unknowns" false="" useUseKnownUnknowns} \
      ~{if defined(minMinTransitions) then ("-min_transitions " +  '"' + minMinTransitions + '"') else ""} \
      ~{if defined(maxMaxTransitions) then ("-max_transitions " +  '"' + maxMaxTransitions + '"') else ""} \
      ~{if defined(cosineCosineSimilarityThreshold) then ("-cosine_similarity_threshold " +  '"' + cosineCosineSimilarityThreshold + '"') else ""} \
      ~{if defined(transitionTransitionThreshold) then ("-transition_threshold " +  '"' + transitionTransitionThreshold + '"') else ""} \
      ~{true="-deisotoping" false="" deDeIsoToPing} \
      ~{true="-deisotoping" false="" deDeIsoToPing} \
      ~{true="-deisotoping" false="" deDeIsoToPing} \
      ~{true="-deisotoping" false="" deDeIsoToPing} \
      ~{true="-deisotoping" false="" deDeIsoToPing} \
      ~{true="-deisotoping" false="" deDeIsoToPing} \
      ~{true="-deisotoping" false="" deDeIsoToPing} \
      ~{true="-deisotoping" false="" deDeIsoToPing} \
      ~{true="-deisotoping" false="" deDeIsoToPing} \
      ~{true="-preprocessing" false="" preprocessingPreprocessing} \
      ~{true="-preprocessing" false="" preprocessingPreprocessing} \
      ~{true="-preprocessing" false="" preprocessingPreprocessing} \
      ~{true="-preprocessing" false="" preprocessingPreprocessing} \
      ~{true="-preprocessing" false="" preprocessingPreprocessing} \
      ~{true="-sirius" false="" siriusSirius} \
      ~{true="-sirius" false="" siriusSirius} \
      ~{true="-sirius" false="" siriusSirius} \
      ~{true="-sirius" false="" siriusSirius} \
      ~{true="-sirius" false="" siriusSirius} \
      ~{true="-sirius" false="" siriusSirius} \
      ~{true="-sirius" false="" siriusSirius} \
      ~{true="-sirius" false="" siriusSirius} \
      ~{true="-sirius" false="" siriusSirius} \
      ~{true="-sirius" false="" siriusSirius} \
      ~{true="-sirius" false="" siriusSirius} \
      ~{true="-sirius" false="" siriusSirius} \
      ~{if defined(outOutWorkspaceDirectory) then ("-out_workspace_directory " +  '"' + outOutWorkspaceDirectory + '"') else ""} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}