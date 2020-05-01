version 1.0

task RunByDirectory {
  input {
    Int numNumThreads
    File outputOutput
    File errorErrorOut
    Boolean keepKeepDirectories
    Boolean jumpingJumpingReadJoiningRun
    File celeraCeleraTerminatorDirectory
    Int maxMaxNodes
    Int minMinKmErLen
    Int maxMaxKmErLen
    Int meanMeanForFauxInserts
    Int joinJoinAggressive
    Int stdevStdevForFauxInserts
    Int numNumStdevSAllowed
    File meanMeanAndStdevFile
    File outputOutputDir
    File contigContigEndSequenceFile
    Int numNumJoinsPerDirectory
    Int skipSkipGaps
    File dirDirForReadSequences
    String? cmdlineCmdlineParse
  }
  command <<<
    runByDirectory \
      ~{cmdlineCmdlineParse} \
      ~{if defined(numNumThreads) then ("--num-threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(errorErrorOut) then ("--error-out " +  '"' + errorErrorOut + '"') else ""} \
      ~{true="--keep-directories" false="" keepKeepDirectories} \
      ~{true="--jumping-read-joining-run" false="" jumpingJumpingReadJoiningRun} \
      ~{if defined(celeraCeleraTerminatorDirectory) then ("--Celera-terminator-directory " +  '"' + celeraCeleraTerminatorDirectory + '"') else ""} \
      ~{if defined(maxMaxNodes) then ("--max-nodes " +  '"' + maxMaxNodes + '"') else ""} \
      ~{if defined(minMinKmErLen) then ("--min-kmer-len " +  '"' + minMinKmErLen + '"') else ""} \
      ~{if defined(maxMaxKmErLen) then ("--max-kmer-len " +  '"' + maxMaxKmErLen + '"') else ""} \
      ~{if defined(meanMeanForFauxInserts) then ("--mean-for-faux-inserts " +  '"' + meanMeanForFauxInserts + '"') else ""} \
      ~{if defined(joinJoinAggressive) then ("--join-aggressive " +  '"' + joinJoinAggressive + '"') else ""} \
      ~{if defined(stdevStdevForFauxInserts) then ("--stdev-for-faux-inserts " +  '"' + stdevStdevForFauxInserts + '"') else ""} \
      ~{if defined(numNumStdevSAllowed) then ("--num-stdevs-allowed " +  '"' + numNumStdevSAllowed + '"') else ""} \
      ~{if defined(meanMeanAndStdevFile) then ("--mean-and-stdev-file " +  '"' + meanMeanAndStdevFile + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(contigContigEndSequenceFile) then ("--contig-end-sequence-file " +  '"' + contigContigEndSequenceFile + '"') else ""} \
      ~{if defined(numNumJoinsPerDirectory) then ("--num-joins-per-directory " +  '"' + numNumJoinsPerDirectory + '"') else ""} \
      ~{if defined(skipSkipGaps) then ("--skip-gaps " +  '"' + skipSkipGaps + '"') else ""} \
      ~{if defined(dirDirForReadSequences) then ("--dir-for-read-sequences " +  '"' + dirDirForReadSequences + '"') else ""}
  >>>
}