version 1.0

task AssayGeneratorMetabo {
  input {
    File inIn
    File inInId
    File outOut
    String methodMethod
    String precursorPrecursorMzTolerance
    String precursorPrecursorMzToleranceUnit
    String precursorPrecursorMzDistance
    String precursorPrecursorRtTolerance
    String cosineCosineSimilarityThreshold
    String filterFilterByConvexHulls
    String transitionTransitionThreshold
    Boolean useUseKnownUnknowns
    File iniIni
    String threadsThreads
    File writeWriteIni
    Boolean helphelpHelphelp
  }
  command <<<
    AssayGeneratorMetabo \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(inInId) then ("-in_id " +  '"' + inInId + '"') else ""} \
      ~{if defined(outOut) then ("-out " +  '"' + outOut + '"') else ""} \
      ~{if defined(methodMethod) then ("-method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(precursorPrecursorMzTolerance) then ("-precursor_mz_tolerance " +  '"' + precursorPrecursorMzTolerance + '"') else ""} \
      ~{if defined(precursorPrecursorMzToleranceUnit) then ("-precursor_mz_tolerance_unit " +  '"' + precursorPrecursorMzToleranceUnit + '"') else ""} \
      ~{if defined(precursorPrecursorMzDistance) then ("-precursor_mz_distance " +  '"' + precursorPrecursorMzDistance + '"') else ""} \
      ~{if defined(precursorPrecursorRtTolerance) then ("-precursor_rt_tolerance " +  '"' + precursorPrecursorRtTolerance + '"') else ""} \
      ~{if defined(cosineCosineSimilarityThreshold) then ("-cosine_similarity_threshold " +  '"' + cosineCosineSimilarityThreshold + '"') else ""} \
      ~{if defined(filterFilterByConvexHulls) then ("-filter_by_convex_hulls " +  '"' + filterFilterByConvexHulls + '"') else ""} \
      ~{if defined(transitionTransitionThreshold) then ("-transition_threshold " +  '"' + transitionTransitionThreshold + '"') else ""} \
      ~{true="-use_known_unknowns" false="" useUseKnownUnknowns} \
      ~{if defined(iniIni) then ("-ini " +  '"' + iniIni + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(writeWriteIni) then ("-write_ini " +  '"' + writeWriteIni + '"') else ""} \
      ~{true="--helphelp" false="" helphelpHelphelp}
  >>>
}