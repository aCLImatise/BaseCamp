version 1.0

task YaraMapper {
  input {
    Boolean versionVersionCheck
    Boolean verboseVerbose
    Boolean veryVeryVerbose
    String outputOutputFile
    String outputOutputFormat
    String readReadGroup
    String secondarySecondaryMatches
    Boolean alignAlignSecondary
    Boolean rabeRabeMaAlignments
    Int errorErrorRate
    Int strataStrataRate
    Int strataStrataCount
    String sensitivitySensitivity
    Int libraryLibraryLength
    Int libraryLibraryDeviation
    Int inInDelRate
    Boolean noNoIndels
    Int threadsThreads
  }
  command <<<
    yara_mapper \
      ~{if defined(versionVersionCheck) then ("--version-check " +  '"' + versionVersionCheck + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--very-verbose" false="" veryVeryVerbose} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(outputOutputFormat) then ("--output-format " +  '"' + outputOutputFormat + '"') else ""} \
      ~{if defined(readReadGroup) then ("--read-group " +  '"' + readReadGroup + '"') else ""} \
      ~{if defined(secondarySecondaryMatches) then ("--secondary-matches " +  '"' + secondarySecondaryMatches + '"') else ""} \
      ~{true="--align-secondary" false="" alignAlignSecondary} \
      ~{true="--rabema-alignments" false="" rabeRabeMaAlignments} \
      ~{if defined(errorErrorRate) then ("--error-rate " +  '"' + errorErrorRate + '"') else ""} \
      ~{if defined(strataStrataRate) then ("--strata-rate " +  '"' + strataStrataRate + '"') else ""} \
      ~{if defined(strataStrataCount) then ("--strata-count " +  '"' + strataStrataCount + '"') else ""} \
      ~{if defined(sensitivitySensitivity) then ("--sensitivity " +  '"' + sensitivitySensitivity + '"') else ""} \
      ~{if defined(libraryLibraryLength) then ("--library-length " +  '"' + libraryLibraryLength + '"') else ""} \
      ~{if defined(libraryLibraryDeviation) then ("--library-deviation " +  '"' + libraryLibraryDeviation + '"') else ""} \
      ~{if defined(inInDelRate) then ("--indel-rate " +  '"' + inInDelRate + '"') else ""} \
      ~{true="--no-indels" false="" noNoIndels} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}