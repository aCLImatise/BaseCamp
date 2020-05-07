version 1.0

task AggregateScoresInIntervals.py {
  input {
    Boolean binnedBinned
    String maskMask
    String? scoreScoreFile
    Int? intervalIntervalFile
    String? outOutFile
  }
  command <<<
    aggregate_scores_in_intervals.py \
      ~{scoreScoreFile} \
      ~{true="--binned" false="" binnedBinned} \
      ~{if defined(maskMask) then ("--mask " +  '"' + maskMask + '"') else ""} \
      ~{intervalIntervalFile} \
      ~{outOutFile}
  >>>
}