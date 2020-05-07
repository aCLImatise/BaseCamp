version 1.0

task Gstacks {
  input {
    Boolean pP
    Boolean mM
    Boolean oO
    Boolean threadsThreads
    Boolean modelModel
    Boolean varVarAlpha
    Boolean gtGtAlpha
    Boolean rmRmPcrDuplicates
    Boolean rmRmUnpairedReads
    Boolean ignoreIgnorePeReads
    Boolean unpairedUnpaired
  }
  command <<<
    gstacks \
      ~{true="-P" false="" pP} \
      ~{true="-M" false="" mM} \
      ~{true="-O" false="" oO} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--model" false="" modelModel} \
      ~{true="--var-alpha" false="" varVarAlpha} \
      ~{true="--gt-alpha" false="" gtGtAlpha} \
      ~{true="--rm-pcr-duplicates" false="" rmRmPcrDuplicates} \
      ~{true="--rm-unpaired-reads" false="" rmRmUnpairedReads} \
      ~{true="--ignore-pe-reads" false="" ignoreIgnorePeReads} \
      ~{true="--unpaired" false="" unpairedUnpaired}
  >>>
}