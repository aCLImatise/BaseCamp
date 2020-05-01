version 1.0

task MhcflurryPredictScan {
  input {
    Boolean listListSupportedAlleles
    Boolean listListSupportedPeptideLengths
    String inputInputFormat
    Array[String]+ allelesAlleles
    Array[String]+ sequencesSequences
    String sequenceSequenceIdColumn
    String sequenceSequenceColumn
    Boolean noNoThrow
    Array[String]+ peptidePeptideLengths
    Boolean resultsResultsAll
    String resultsResultsBest
    String resultsResultsFiltered
    String thresholdThresholdPresentationScore
    String thresholdThresholdProcessingScore
    String thresholdThresholdAffinity
    String thresholdThresholdAffinityPercentile
    String outOut
    String outputOutputDelimiter
    Boolean noNoAffinityPercentile
    String modelsModels
    Boolean noNoFlanking
    String? inputInput
  }
  command <<<
    mhcflurry-predict-scan \
      ~{inputInput} \
      ~{true="--list-supported-alleles" false="" listListSupportedAlleles} \
      ~{true="--list-supported-peptide-lengths" false="" listListSupportedPeptideLengths} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(allelesAlleles) then ("--alleles " +  '"' + allelesAlleles + '"') else ""} \
      ~{if defined(sequencesSequences) then ("--sequences " +  '"' + sequencesSequences + '"') else ""} \
      ~{if defined(sequenceSequenceIdColumn) then ("--sequence-id-column " +  '"' + sequenceSequenceIdColumn + '"') else ""} \
      ~{if defined(sequenceSequenceColumn) then ("--sequence-column " +  '"' + sequenceSequenceColumn + '"') else ""} \
      ~{true="--no-throw" false="" noNoThrow} \
      ~{if defined(peptidePeptideLengths) then ("--peptide-lengths " +  '"' + peptidePeptideLengths + '"') else ""} \
      ~{true="--results-all" false="" resultsResultsAll} \
      ~{if defined(resultsResultsBest) then ("--results-best " +  '"' + resultsResultsBest + '"') else ""} \
      ~{if defined(resultsResultsFiltered) then ("--results-filtered " +  '"' + resultsResultsFiltered + '"') else ""} \
      ~{if defined(thresholdThresholdPresentationScore) then ("--threshold-presentation-score " +  '"' + thresholdThresholdPresentationScore + '"') else ""} \
      ~{if defined(thresholdThresholdProcessingScore) then ("--threshold-processing-score " +  '"' + thresholdThresholdProcessingScore + '"') else ""} \
      ~{if defined(thresholdThresholdAffinity) then ("--threshold-affinity " +  '"' + thresholdThresholdAffinity + '"') else ""} \
      ~{if defined(thresholdThresholdAffinityPercentile) then ("--threshold-affinity-percentile " +  '"' + thresholdThresholdAffinityPercentile + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(outputOutputDelimiter) then ("--output-delimiter " +  '"' + outputOutputDelimiter + '"') else ""} \
      ~{true="--no-affinity-percentile" false="" noNoAffinityPercentile} \
      ~{if defined(modelsModels) then ("--models " +  '"' + modelsModels + '"') else ""} \
      ~{true="--no-flanking" false="" noNoFlanking}
  >>>
}