version 1.0

task Elector {
  input {
    Boolean threadsThreads
    Boolean correctedCorrected
    Boolean splitSplit
    Boolean uncorrectedUncorrected
    Boolean perfectPerfect
    Boolean referenceReference
    Boolean simulatorSimulator
    Boolean correctCorrectOr
    Boolean dazzDazzDb
    Boolean outputOutput
    Boolean remapRemap
    Boolean assembleAssemble
    Boolean minsizeMinsize
  }
  command <<<
    elector \
      ~{true="-threads" false="" threadsThreads} \
      ~{true="-corrected" false="" correctedCorrected} \
      ~{true="-split" false="" splitSplit} \
      ~{true="-uncorrected" false="" uncorrectedUncorrected} \
      ~{true="-perfect" false="" perfectPerfect} \
      ~{true="-reference" false="" referenceReference} \
      ~{true="-simulator" false="" simulatorSimulator} \
      ~{true="-corrector" false="" correctCorrectOr} \
      ~{true="-dazzDb" false="" dazzDazzDb} \
      ~{true="-output" false="" outputOutput} \
      ~{true="-remap" false="" remapRemap} \
      ~{true="-assemble" false="" assembleAssemble} \
      ~{true="-minsize" false="" minsizeMinsize}
  >>>
}