version 1.0

task Ococo {
  input {
    File inputInput
    File fastFastARef
    File statsStatsIn
    File fastFastACons
    File statsStatsOut
    File vcfVcfCons
    File pilePileUp
    Boolean verboseVerbose
    String countersCounters
    String modeMode
    String strategyStrategy
    Int minMinMq
    Int minMinBq
    Int refRefWeight
    Int minMinCov
    Float majMajThRes
  }
  command <<<
    ococo \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(fastFastARef) then ("--fasta-ref " +  '"' + fastFastARef + '"') else ""} \
      ~{if defined(statsStatsIn) then ("--stats-in " +  '"' + statsStatsIn + '"') else ""} \
      ~{if defined(fastFastACons) then ("--fasta-cons " +  '"' + fastFastACons + '"') else ""} \
      ~{if defined(statsStatsOut) then ("--stats-out " +  '"' + statsStatsOut + '"') else ""} \
      ~{if defined(vcfVcfCons) then ("--vcf-cons " +  '"' + vcfVcfCons + '"') else ""} \
      ~{if defined(pilePileUp) then ("--pileup " +  '"' + pilePileUp + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(countersCounters) then ("--counters " +  '"' + countersCounters + '"') else ""} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(strategyStrategy) then ("--strategy " +  '"' + strategyStrategy + '"') else ""} \
      ~{if defined(minMinMq) then ("--min-MQ " +  '"' + minMinMq + '"') else ""} \
      ~{if defined(minMinBq) then ("--min-BQ " +  '"' + minMinBq + '"') else ""} \
      ~{if defined(refRefWeight) then ("--ref-weight " +  '"' + refRefWeight + '"') else ""} \
      ~{if defined(minMinCov) then ("--min-cov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(majMajThRes) then ("--maj-thres " +  '"' + majMajThRes + '"') else ""}
  >>>
}