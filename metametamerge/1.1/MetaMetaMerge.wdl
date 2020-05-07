version 1.0

task MetaMetaMerge.py {
  input {
    Boolean iI
    Boolean dD
    String toolToolIdentifier
    String toolToolMethod
    String namesNamesFile
    String nodesNodesFile
    String mergedMergedFile
    String binsBins
    String cutCutOff
    String modeMode
    String ranksRanks
    String outputOutputFile
    String outputOutputType
    Boolean outputOutputParsedProfiles
    Boolean detailedDetailed
    Boolean verboseVerbose
  }
  command <<<
    MetaMetaMerge.py \
      ~{true="-i" false="" iI} \
      ~{true="-d" false="" dD} \
      ~{if defined(toolToolIdentifier) then ("--tool-identifier " +  '"' + toolToolIdentifier + '"') else ""} \
      ~{if defined(toolToolMethod) then ("--tool-method " +  '"' + toolToolMethod + '"') else ""} \
      ~{if defined(namesNamesFile) then ("--names-file " +  '"' + namesNamesFile + '"') else ""} \
      ~{if defined(nodesNodesFile) then ("--nodes-file " +  '"' + nodesNodesFile + '"') else ""} \
      ~{if defined(mergedMergedFile) then ("--merged-file " +  '"' + mergedMergedFile + '"') else ""} \
      ~{if defined(binsBins) then ("--bins " +  '"' + binsBins + '"') else ""} \
      ~{if defined(cutCutOff) then ("--cutoff " +  '"' + cutCutOff + '"') else ""} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(ranksRanks) then ("--ranks " +  '"' + ranksRanks + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(outputOutputType) then ("--output-type " +  '"' + outputOutputType + '"') else ""} \
      ~{true="--output-parsed-profiles" false="" outputOutputParsedProfiles} \
      ~{true="--detailed" false="" detailedDetailed} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}