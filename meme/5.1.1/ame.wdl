version 1.0

task Ame {
  input {
    Boolean oO
    Boolean ocOc
    Boolean controlControl
    String kmKmEr
    String seedSeed
    Boolean methodMethod
    Boolean scoringScoring
    Boolean hitHitLoFraction
    String evalueEvalueReportThreshold
    Boolean fastFastAThreshold
    Boolean fixFixPartition
    Boolean posPosList
    Boolean logLogFScores
    Boolean logLogPwmScores
    Boolean linLinRegSwitchXy
    Boolean xXAlph
    Boolean bBFile
    Boolean motifMotifPseudo
    String incInc
    String excExc
    Boolean verboseVerbose
  }
  command <<<
    ame \
      ~{true="--o" false="" oO} \
      ~{true="--oc" false="" ocOc} \
      ~{true="--control" false="" controlControl} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="--method" false="" methodMethod} \
      ~{true="--scoring" false="" scoringScoring} \
      ~{true="--hit-lo-fraction" false="" hitHitLoFraction} \
      ~{if defined(evalueEvalueReportThreshold) then ("--evalue-report-threshold " +  '"' + evalueEvalueReportThreshold + '"') else ""} \
      ~{true="--fasta-threshold" false="" fastFastAThreshold} \
      ~{true="--fix-partition" false="" fixFixPartition} \
      ~{true="--poslist" false="" posPosList} \
      ~{true="--log-fscores" false="" logLogFScores} \
      ~{true="--log-pwmscores" false="" logLogPwmScores} \
      ~{true="--linreg-switchxy" false="" linLinRegSwitchXy} \
      ~{true="--xalph" false="" xXAlph} \
      ~{true="--bfile" false="" bBFile} \
      ~{true="--motif-pseudo" false="" motifMotifPseudo} \
      ~{if defined(incInc) then ("--inc " +  '"' + incInc + '"') else ""} \
      ~{if defined(excExc) then ("--exc " +  '"' + excExc + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}