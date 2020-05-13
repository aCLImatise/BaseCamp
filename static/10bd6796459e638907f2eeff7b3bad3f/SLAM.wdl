version 1.0

task SLAM {
  input {
    String dbDb
    String minMinAlignmentScore
    String scoreScoreFractionThreshold
    String matchMatchScore
    String mismatchMismatchPenalty
    String gapGapOpen
    String gapGapExtend
    String numNumReads
    String numNumReadsAtOnce
    String outputOutputFile
    String samSamFile
    String numNumAlignments
    Boolean samSamXA
    Boolean justJustAlign
    Boolean noNoPseudoAssembly
  }
  command <<<
    SLAM \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(minMinAlignmentScore) then ("--min-alignment-score " +  '"' + minMinAlignmentScore + '"') else ""} \
      ~{if defined(scoreScoreFractionThreshold) then ("--score-fraction-threshold " +  '"' + scoreScoreFractionThreshold + '"') else ""} \
      ~{if defined(matchMatchScore) then ("--match-score " +  '"' + matchMatchScore + '"') else ""} \
      ~{if defined(mismatchMismatchPenalty) then ("--mismatch-penalty " +  '"' + mismatchMismatchPenalty + '"') else ""} \
      ~{if defined(gapGapOpen) then ("--gap-open " +  '"' + gapGapOpen + '"') else ""} \
      ~{if defined(gapGapExtend) then ("--gap-extend " +  '"' + gapGapExtend + '"') else ""} \
      ~{if defined(numNumReads) then ("--num-reads " +  '"' + numNumReads + '"') else ""} \
      ~{if defined(numNumReadsAtOnce) then ("--num-reads-at-once " +  '"' + numNumReadsAtOnce + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(samSamFile) then ("--sam-file " +  '"' + samSamFile + '"') else ""} \
      ~{if defined(numNumAlignments) then ("--num-alignments " +  '"' + numNumAlignments + '"') else ""} \
      ~{true="--sam-xa" false="" samSamXA} \
      ~{true="--just-align" false="" justJustAlign} \
      ~{true="--no-pseudo-assembly" false="" noNoPseudoAssembly}
  >>>
}