version 1.0

task PretextSnapshot.sse42 {
  input {
    Boolean mM
    Boolean fF
    Boolean rR
    Boolean cC
    Boolean printPrintColourMapNames
    String jpegqualityJpegquality
    Boolean oO
    String prefixPrefix
    String sequencesSequences
    Boolean sequenceSequenceHelp
    String minMinTexels
    String gridGridSize
    String gridGridColour
    Boolean printPrintSequenceNames
    String verboseVerbose
    Boolean licenceLicence
    Boolean thirdThirdParty
    String? pretextPretextSnapshot
    String? optionsOptions
  }
  command <<<
    PretextSnapshot.sse42 \
      ~{pretextPretextSnapshot} \
      ~{true="-m" false="" mM} \
      ~{true="-f" false="" fF} \
      ~{true="-r" false="" rR} \
      ~{true="-c" false="" cC} \
      ~{true="--printColourMapNames" false="" printPrintColourMapNames} \
      ~{if defined(jpegqualityJpegquality) then ("--jpegQuality " +  '"' + jpegqualityJpegquality + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(sequencesSequences) then ("--sequences " +  '"' + sequencesSequences + '"') else ""} \
      ~{true="--sequenceHelp" false="" sequenceSequenceHelp} \
      ~{if defined(minMinTexels) then ("--minTexels " +  '"' + minMinTexels + '"') else ""} \
      ~{if defined(gridGridSize) then ("--gridSize " +  '"' + gridGridSize + '"') else ""} \
      ~{if defined(gridGridColour) then ("--gridColour " +  '"' + gridGridColour + '"') else ""} \
      ~{true="--printSequenceNames" false="" printPrintSequenceNames} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{true="--licence" false="" licenceLicence} \
      ~{true="--thirdParty" false="" thirdThirdParty} \
      ~{optionsOptions}
  >>>
}