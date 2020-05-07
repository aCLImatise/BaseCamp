version 1.0

task TandemGenotypesJoin {
  input {
    Boolean shrinkShrink
    String meanMean
    File scoresScores
    Boolean verboseVerbose
  }
  command <<<
    tandem-genotypes-join \
      ~{true="--shrink" false="" shrinkShrink} \
      ~{if defined(meanMean) then ("--mean " +  '"' + meanMean + '"') else ""} \
      ~{if defined(scoresScores) then ("--scores " +  '"' + scoresScores + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}