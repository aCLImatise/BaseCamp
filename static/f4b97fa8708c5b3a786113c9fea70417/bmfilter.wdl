version 1.0

task Bmfilter {
  input {
    Boolean qualityQualityChannels
    Boolean readRead1
    Boolean readRead2
    Boolean wordWordBitmask
    Boolean useUseMmap
    Boolean maxMaxAmbiguities
    Boolean clipClipLowercase
    Boolean clipClipNWin
    Boolean clipClipQuality
    Boolean outputOutput
    Boolean tagTag
    Boolean postPost
    Boolean reportReport
    Boolean postPostClipped
    Boolean complexityComplexity
    Boolean shortShortSeq
    Boolean noNoPostLen
    Boolean chopChopLength
    Boolean chopChopStep
    Boolean maskMaskEarly
    Boolean postPostLowComplexity
    Boolean heurHeurMinWords
    Boolean heurHeurManyWords
    Boolean heurHeurCountLongPct
    Boolean heurHeurCountShortPct
    Boolean heurHeurRunLongPct
    Boolean heurHeurRunShortPct
    Boolean heurHeurNegligibleLength
  }
  command <<<
    bmfilter \
      ~{true="--quality-channels" false="" qualityQualityChannels} \
      ~{true="--read-1" false="" readRead1} \
      ~{true="--read-2" false="" readRead2} \
      ~{true="--word-bitmask" false="" wordWordBitmask} \
      ~{true="--use-mmap" false="" useUseMmap} \
      ~{true="--max-ambiguities" false="" maxMaxAmbiguities} \
      ~{true="--clip-lowercase" false="" clipClipLowercase} \
      ~{true="--clip-N-win" false="" clipClipNWin} \
      ~{true="--clip-quality" false="" clipClipQuality} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--tag" false="" tagTag} \
      ~{true="--post" false="" postPost} \
      ~{true="--report" false="" reportReport} \
      ~{true="--post-clipped" false="" postPostClipped} \
      ~{true="--complexity" false="" complexityComplexity} \
      ~{true="--short-seq" false="" shortShortSeq} \
      ~{true="--no-post-len" false="" noNoPostLen} \
      ~{true="--chop-length" false="" chopChopLength} \
      ~{true="--chop-step" false="" chopChopStep} \
      ~{true="--mask-early" false="" maskMaskEarly} \
      ~{true="--post-low-complexity" false="" postPostLowComplexity} \
      ~{true="--heur-min-words" false="" heurHeurMinWords} \
      ~{true="--heur-many-words" false="" heurHeurManyWords} \
      ~{true="--heur-count-long-pct" false="" heurHeurCountLongPct} \
      ~{true="--heur-count-short-pct" false="" heurHeurCountShortPct} \
      ~{true="--heur-run-long-pct" false="" heurHeurRunLongPct} \
      ~{true="--heur-run-short-pct" false="" heurHeurRunShortPct} \
      ~{true="--heur-negligible-length" false="" heurHeurNegligibleLength}
  >>>
}