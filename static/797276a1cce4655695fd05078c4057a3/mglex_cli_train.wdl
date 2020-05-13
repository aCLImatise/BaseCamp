version 1.0

task MglexCliTrain {
  input {
    File responsibilityResponsibility
    File outOutModel
    File weightWeight
    File abAbCoverage
    File diffDiffCoverage
    File compositionComposition
    File labelsLabels
    File logLogFile
    String? trainTrain
    String? trainTrain
  }
  command <<<
    mglex-cli train \
      ~{trainTrain} \
      ~{if defined(responsibilityResponsibility) then ("--responsibility " +  '"' + responsibilityResponsibility + '"') else ""} \
      ~{if defined(outOutModel) then ("--outmodel " +  '"' + outOutModel + '"') else ""} \
      ~{if defined(weightWeight) then ("--weight " +  '"' + weightWeight + '"') else ""} \
      ~{if defined(abAbCoverage) then ("--abcoverage " +  '"' + abAbCoverage + '"') else ""} \
      ~{if defined(diffDiffCoverage) then ("--diffcoverage " +  '"' + diffDiffCoverage + '"') else ""} \
      ~{if defined(compositionComposition) then ("--composition " +  '"' + compositionComposition + '"') else ""} \
      ~{if defined(labelsLabels) then ("--labels " +  '"' + labelsLabels + '"') else ""} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{trainTrain}
  >>>
}