version 1.0

task DeepbgcPipeline {
  input {
    String outputOutput
    String limitLimitToRecord
    Boolean minimalMinimalOutput
    Boolean prodigalProdigalMetaMode
    Boolean proteinProtein
    String detectorDetector
    Boolean noNoDetector
    String labelLabel
    String scoreScore
    String mergeMergeMaxProteinGap
    String mergeMergeMaxNuclGap
    Int minMinNucl
    Int minMinProteins
    Int minMinDomains
    Int minMinBioDomains
    String classifierClassifier
    Boolean noNoClassifier
    String classifierClassifierScore
    String? inputsInputs
  }
  command <<<
    deepbgc pipeline \
      ~{inputsInputs} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(limitLimitToRecord) then ("--limit-to-record " +  '"' + limitLimitToRecord + '"') else ""} \
      ~{true="--minimal-output" false="" minimalMinimalOutput} \
      ~{true="--prodigal-meta-mode" false="" prodigalProdigalMetaMode} \
      ~{true="--protein" false="" proteinProtein} \
      ~{if defined(detectorDetector) then ("--detector " +  '"' + detectorDetector + '"') else ""} \
      ~{true="--no-detector" false="" noNoDetector} \
      ~{if defined(labelLabel) then ("--label " +  '"' + labelLabel + '"') else ""} \
      ~{if defined(scoreScore) then ("--score " +  '"' + scoreScore + '"') else ""} \
      ~{if defined(mergeMergeMaxProteinGap) then ("--merge-max-protein-gap " +  '"' + mergeMergeMaxProteinGap + '"') else ""} \
      ~{if defined(mergeMergeMaxNuclGap) then ("--merge-max-nucl-gap " +  '"' + mergeMergeMaxNuclGap + '"') else ""} \
      ~{if defined(minMinNucl) then ("--min-nucl " +  '"' + minMinNucl + '"') else ""} \
      ~{if defined(minMinProteins) then ("--min-proteins " +  '"' + minMinProteins + '"') else ""} \
      ~{if defined(minMinDomains) then ("--min-domains " +  '"' + minMinDomains + '"') else ""} \
      ~{if defined(minMinBioDomains) then ("--min-bio-domains " +  '"' + minMinBioDomains + '"') else ""} \
      ~{if defined(classifierClassifier) then ("--classifier " +  '"' + classifierClassifier + '"') else ""} \
      ~{true="--no-classifier" false="" noNoClassifier} \
      ~{if defined(classifierClassifierScore) then ("--classifier-score " +  '"' + classifierClassifierScore + '"') else ""}
  >>>
}