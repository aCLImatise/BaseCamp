version 1.0

task SpingoSummary.py {
  input {
    String levelLevel
    String similaritySimilarity
    String thresholdThreshold
    Boolean percentPercent
    String? resultsResultsFile
  }
  command <<<
    spingo_summary.py \
      ~{resultsResultsFile} \
      ~{if defined(levelLevel) then ("--level " +  '"' + levelLevel + '"') else ""} \
      ~{if defined(similaritySimilarity) then ("--similarity " +  '"' + similaritySimilarity + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{true="--percent" false="" percentPercent}
  >>>
}