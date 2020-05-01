version 1.0

task EqtlbmaBfParallel.bash {
  input {
    String verboseVerbose
    Boolean p2bP2b
    Boolean genedGened
    Boolean snpSnpD
    Boolean inInSsd
    Boolean seedSeedF
    Boolean taskTask
    Boolean pbfPbf
    Boolean maxMaxBf
    Boolean threadThread
    Boolean sbSbGrp
  }
  command <<<
    eqtlbma_bf_parallel.bash \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""} \
      ~{true="--p2b" false="" p2bP2b} \
      ~{true="--geneD" false="" genedGened} \
      ~{true="--snpD" false="" snpSnpD} \
      ~{true="--inssD" false="" inInSsd} \
      ~{true="--seedF" false="" seedSeedF} \
      ~{true="--task" false="" taskTask} \
      ~{true="--pbf" false="" pbfPbf} \
      ~{true="--maxbf" false="" maxMaxBf} \
      ~{true="--thread" false="" threadThread} \
      ~{true="--sbgrp" false="" sbSbGrp}
  >>>
}