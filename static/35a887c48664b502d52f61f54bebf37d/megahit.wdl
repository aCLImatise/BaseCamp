version 1.0

task Megahit {
  input {
    Boolean rR
    Boolean minMinCount
    Boolean kKList
    Boolean kKMin
    Boolean kKMax
    Boolean kKStep
    Boolean noNoMercy
    Boolean bubbleBubbleLevel
    Boolean mergeMergeLevel
    Boolean prunePruneLevel
    Boolean prunePruneDepth
    Boolean disconnectDisconnectRatio
    Boolean lowLowLocalRatio
    Boolean maxMaxTipLen
    Boolean cleaningCleaningRounds
    Boolean noNoLocal
    Boolean kmKmIn1pass
    Boolean presetsPresets
    Boolean mM
    Boolean memMemFlag
    Boolean tT
    Boolean noNoHwAccel
    Boolean oO
    Boolean outOutPrefix
    Boolean minMinContigLen
    Boolean keepKeepTmpFiles
    Boolean tmpTmpDir
    Boolean continueContinue
    Boolean testTest
    Boolean vV
  }
  command <<<
    megahit \
      ~{true="-r" false="" rR} \
      ~{true="--min-count" false="" minMinCount} \
      ~{true="--k-list" false="" kKList} \
      ~{true="--k-min" false="" kKMin} \
      ~{true="--k-max" false="" kKMax} \
      ~{true="--k-step" false="" kKStep} \
      ~{true="--no-mercy" false="" noNoMercy} \
      ~{true="--bubble-level" false="" bubbleBubbleLevel} \
      ~{true="--merge-level" false="" mergeMergeLevel} \
      ~{true="--prune-level" false="" prunePruneLevel} \
      ~{true="--prune-depth" false="" prunePruneDepth} \
      ~{true="--disconnect-ratio" false="" disconnectDisconnectRatio} \
      ~{true="--low-local-ratio" false="" lowLowLocalRatio} \
      ~{true="--max-tip-len" false="" maxMaxTipLen} \
      ~{true="--cleaning-rounds" false="" cleaningCleaningRounds} \
      ~{true="--no-local" false="" noNoLocal} \
      ~{true="--kmin-1pass" false="" kmKmIn1pass} \
      ~{true="--presets" false="" presetsPresets} \
      ~{true="-m" false="" mM} \
      ~{true="--mem-flag" false="" memMemFlag} \
      ~{true="-t" false="" tT} \
      ~{true="--no-hw-accel" false="" noNoHwAccel} \
      ~{true="-o" false="" oO} \
      ~{true="--out-prefix" false="" outOutPrefix} \
      ~{true="--min-contig-len" false="" minMinContigLen} \
      ~{true="--keep-tmp-files" false="" keepKeepTmpFiles} \
      ~{true="--tmp-dir" false="" tmpTmpDir} \
      ~{true="--continue" false="" continueContinue} \
      ~{true="--test" false="" testTest} \
      ~{true="-v" false="" vV}
  >>>
}