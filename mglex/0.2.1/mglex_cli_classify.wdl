version 1.0

task MglexCliClassify {
  input {
    Boolean normalizeNormalize
    File modelModel
    File abAbCoverage
    File diffDiffCoverage
    File compositionComposition
    File labelsLabels
    Float betaBeta
    File logLogFile
    String? classifyClassify
    String? classifyClassify
  }
  command <<<
    mglex-cli classify \
      ~{classifyClassify} \
      ~{true="--normalize" false="" normalizeNormalize} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{if defined(abAbCoverage) then ("--abcoverage " +  '"' + abAbCoverage + '"') else ""} \
      ~{if defined(diffDiffCoverage) then ("--diffcoverage " +  '"' + diffDiffCoverage + '"') else ""} \
      ~{if defined(compositionComposition) then ("--composition " +  '"' + compositionComposition + '"') else ""} \
      ~{if defined(labelsLabels) then ("--labels " +  '"' + labelsLabels + '"') else ""} \
      ~{if defined(betaBeta) then ("--beta " +  '"' + betaBeta + '"') else ""} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{classifyClassify}
  >>>
}