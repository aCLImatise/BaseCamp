version 1.0

task AlbatradisAnnotation {
  input {
    String featureFeatureSize
    String outputOutputFile
    Boolean verboseVerbose
    Boolean debugDebug
    String? emblEmblFile
  }
  command <<<
    albatradis-annotation \
      ~{emblEmblFile} \
      ~{if defined(featureFeatureSize) then ("--feature_size " +  '"' + featureFeatureSize + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--outputfile " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug}
  >>>
}