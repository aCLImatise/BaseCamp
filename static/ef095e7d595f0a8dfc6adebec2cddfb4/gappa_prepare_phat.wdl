version 1.0

task GappaPreparePhat {
  input {
    String taxonomyTaxonomyFile
    String sequenceSequenceFile
    String targetTargetSize
    String subSubTaxonomy
    String minMinSubCladeSize
    String maxMaxSubCladeSize
    String minMinTaxLevel
    Boolean allowAllowApproximation
    Boolean noNoTaxASelection
    String consensusConsensusMethod
    Float consensusConsensusThreshold
    String outOutDir
    Boolean writeWriteInfoFiles
    Boolean allowAllowFileOverwriting
    Boolean verboseVerbose
    String threadsThreads
    String logLogFile
    String? optionsOptions
  }
  command <<<
    gappa prepare phat \
      ~{optionsOptions} \
      ~{if defined(taxonomyTaxonomyFile) then ("--taxonomy-file " +  '"' + taxonomyTaxonomyFile + '"') else ""} \
      ~{if defined(sequenceSequenceFile) then ("--sequence-file " +  '"' + sequenceSequenceFile + '"') else ""} \
      ~{if defined(targetTargetSize) then ("--target-size " +  '"' + targetTargetSize + '"') else ""} \
      ~{if defined(subSubTaxonomy) then ("--sub-taxonomy " +  '"' + subSubTaxonomy + '"') else ""} \
      ~{if defined(minMinSubCladeSize) then ("--min-subclade-size " +  '"' + minMinSubCladeSize + '"') else ""} \
      ~{if defined(maxMaxSubCladeSize) then ("--max-subclade-size " +  '"' + maxMaxSubCladeSize + '"') else ""} \
      ~{if defined(minMinTaxLevel) then ("--min-tax-level " +  '"' + minMinTaxLevel + '"') else ""} \
      ~{true="--allow-approximation" false="" allowAllowApproximation} \
      ~{true="--no-taxa-selection" false="" noNoTaxASelection} \
      ~{if defined(consensusConsensusMethod) then ("--consensus-method " +  '"' + consensusConsensusMethod + '"') else ""} \
      ~{if defined(consensusConsensusThreshold) then ("--consensus-threshold " +  '"' + consensusConsensusThreshold + '"') else ""} \
      ~{if defined(outOutDir) then ("--out-dir " +  '"' + outOutDir + '"') else ""} \
      ~{true="--write-info-files" false="" writeWriteInfoFiles} \
      ~{true="--allow-file-overwriting" false="" allowAllowFileOverwriting} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""}
  >>>
}