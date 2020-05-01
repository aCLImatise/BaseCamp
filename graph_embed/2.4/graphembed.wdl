version 1.0

task Graphembed {
  input {
    File iI
    File tT
    String oO
    String classClassConfidence
    String kK
    String dD
    String zZ
    String lL
    Boolean normalizationNormalization
    Boolean featureFeatureSelection
    Boolean correlationCorrelationTransformation
    String minMinThreshold
    String maxMaxThreshold
    String randomRandomState
    Boolean displayDisplay
    String figureFigureSize
    String cmapCmapName
    Boolean doDoNotAddTimestamp
    Boolean verboseVerbose
  }
  command <<<
    graphembed \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(classClassConfidence) then ("--class_confidence " +  '"' + classClassConfidence + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(zZ) then ("-z " +  '"' + zZ + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="--normalization" false="" normalizationNormalization} \
      ~{true="--feature_selection" false="" featureFeatureSelection} \
      ~{true="--correlation_transformation" false="" correlationCorrelationTransformation} \
      ~{if defined(minMinThreshold) then ("--min_threshold " +  '"' + minMinThreshold + '"') else ""} \
      ~{if defined(maxMaxThreshold) then ("--max_threshold " +  '"' + maxMaxThreshold + '"') else ""} \
      ~{if defined(randomRandomState) then ("--random_state " +  '"' + randomRandomState + '"') else ""} \
      ~{true="--display" false="" displayDisplay} \
      ~{if defined(figureFigureSize) then ("--figure_size " +  '"' + figureFigureSize + '"') else ""} \
      ~{if defined(cmapCmapName) then ("--cmap_name " +  '"' + cmapCmapName + '"') else ""} \
      ~{true="--do_not_add_timestamp" false="" doDoNotAddTimestamp} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}