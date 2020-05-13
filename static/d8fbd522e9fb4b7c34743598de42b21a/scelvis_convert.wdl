version 1.0

task ScelvisConvert {
  input {
    String inputInputDir
    String aboutAboutMd
    String markersMarkers
    String outputOutput
    String formatFormat
    Boolean useUseRaw
    Boolean splitSplitSpecies
    Boolean splitSplitSamples
    String nNMarkers
    Boolean verboseVerbose
  }
  command <<<
    scelvis convert \
      ~{if defined(inputInputDir) then ("--input-dir " +  '"' + inputInputDir + '"') else ""} \
      ~{if defined(aboutAboutMd) then ("--about-md " +  '"' + aboutAboutMd + '"') else ""} \
      ~{if defined(markersMarkers) then ("--markers " +  '"' + markersMarkers + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{true="--use-raw" false="" useUseRaw} \
      ~{true="--split-species" false="" splitSplitSpecies} \
      ~{true="--split-samples" false="" splitSplitSamples} \
      ~{if defined(nNMarkers) then ("--nmarkers " +  '"' + nNMarkers + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}