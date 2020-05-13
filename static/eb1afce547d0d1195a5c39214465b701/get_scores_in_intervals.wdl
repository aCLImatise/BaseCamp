version 1.0

task GetScoresInIntervals.pyOutFile {
  input {
    String? scoreScoreFile
    Int? intervalIntervalFile
    String? outOutFile
  }
  command <<<
    get_scores_in_intervals.py out_file \
      ~{scoreScoreFile} \
      ~{intervalIntervalFile} \
      ~{outOutFile}
  >>>
}