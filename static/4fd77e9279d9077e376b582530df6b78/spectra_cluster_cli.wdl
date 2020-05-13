version 1.0

task SpectraClusterCli {
  input {
    Boolean addAddScores
    String binaryBinaryDirectory
    Boolean fastFastMode
    String filterFilter
    Boolean fragmentFragmentTolerance
    Boolean keepKeepBinaryFiles
    String majorMajorPeakJobs
    Boolean onlyOnlyIdentified
    Boolean onlyOnlyUnidentified
    String outputOutputPath
    String precursorPrecursorTolerance
    String precursorPrecursorToleranceUnit
    String removeRemoveReporters
    Boolean reuseReuseBinaryFiles
    String roundsRounds
    String thresholdThresholdEnd
    String thresholdThresholdStart
    Boolean verboseVerbose
    Boolean xXConvertCgf
    Boolean xXDisableMgfComments
    Boolean xXFilterPeaksMz
    String xXLearnCdf
    String xXLoadCdf
    Boolean xXMergeBinaryFiles
    String xXMinAdaptComparisons
    String xXMinComparisons
    String xXMinConsensusPeaksToKeep
    String xXNPreFilteredPeaks
  }
  command <<<
    spectra-cluster-cli \
      ~{true="-add_scores" false="" addAddScores} \
      ~{if defined(binaryBinaryDirectory) then ("-binary_directory " +  '"' + binaryBinaryDirectory + '"') else ""} \
      ~{true="-fast_mode" false="" fastFastMode} \
      ~{if defined(filterFilter) then ("-filter " +  '"' + filterFilter + '"') else ""} \
      ~{true="-fragment_tolerance" false="" fragmentFragmentTolerance} \
      ~{true="-keep_binary_files" false="" keepKeepBinaryFiles} \
      ~{if defined(majorMajorPeakJobs) then ("-major_peak_jobs " +  '"' + majorMajorPeakJobs + '"') else ""} \
      ~{true="-only_identified" false="" onlyOnlyIdentified} \
      ~{true="-only_unidentified" false="" onlyOnlyUnidentified} \
      ~{if defined(outputOutputPath) then ("-output_path " +  '"' + outputOutputPath + '"') else ""} \
      ~{if defined(precursorPrecursorTolerance) then ("-precursor_tolerance " +  '"' + precursorPrecursorTolerance + '"') else ""} \
      ~{if defined(precursorPrecursorToleranceUnit) then ("-precursor_tolerance_unit " +  '"' + precursorPrecursorToleranceUnit + '"') else ""} \
      ~{if defined(removeRemoveReporters) then ("-remove_reporters " +  '"' + removeRemoveReporters + '"') else ""} \
      ~{true="-reuse_binary_files" false="" reuseReuseBinaryFiles} \
      ~{if defined(roundsRounds) then ("-rounds " +  '"' + roundsRounds + '"') else ""} \
      ~{if defined(thresholdThresholdEnd) then ("-threshold_end " +  '"' + thresholdThresholdEnd + '"') else ""} \
      ~{if defined(thresholdThresholdStart) then ("-threshold_start " +  '"' + thresholdThresholdStart + '"') else ""} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-x_convert_cgf" false="" xXConvertCgf} \
      ~{true="-x_disable_mgf_comments" false="" xXDisableMgfComments} \
      ~{true="-x_filter_peaks_mz" false="" xXFilterPeaksMz} \
      ~{if defined(xXLearnCdf) then ("-x_learn_cdf " +  '"' + xXLearnCdf + '"') else ""} \
      ~{if defined(xXLoadCdf) then ("-x_load_cdf " +  '"' + xXLoadCdf + '"') else ""} \
      ~{true="-x_merge_binary_files" false="" xXMergeBinaryFiles} \
      ~{if defined(xXMinAdaptComparisons) then ("-x_min_adapt_comparisons " +  '"' + xXMinAdaptComparisons + '"') else ""} \
      ~{if defined(xXMinComparisons) then ("-x_min_comparisons " +  '"' + xXMinComparisons + '"') else ""} \
      ~{if defined(xXMinConsensusPeaksToKeep) then ("-x_min_consensus_peaks_to_keep " +  '"' + xXMinConsensusPeaksToKeep + '"') else ""} \
      ~{if defined(xXNPreFilteredPeaks) then ("-x_n_prefiltered_peaks " +  '"' + xXNPreFilteredPeaks + '"') else ""}
  >>>
}