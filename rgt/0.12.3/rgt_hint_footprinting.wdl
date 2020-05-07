version 1.0

task RgtHintFootprinting {
  input {
    String organismOrganism
    File hmmHmmFile
    File biasBiasTable
    Boolean pairedPairedEnd
    Boolean biasBiasCorrection
    String biasBiasType
    File outputOutputLocation
    String outputOutputPrefix
    Boolean atacAtacSeq
    Boolean dnaseDnaseSeq
    Boolean histoneHistone
  }
  command <<<
    rgt-hint footprinting \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(hmmHmmFile) then ("--hmm-file " +  '"' + hmmHmmFile + '"') else ""} \
      ~{if defined(biasBiasTable) then ("--bias-table " +  '"' + biasBiasTable + '"') else ""} \
      ~{true="--paired-end" false="" pairedPairedEnd} \
      ~{true="--bias-correction" false="" biasBiasCorrection} \
      ~{if defined(biasBiasType) then ("--bias-type " +  '"' + biasBiasType + '"') else ""} \
      ~{if defined(outputOutputLocation) then ("--output-location " +  '"' + outputOutputLocation + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{true="--atac-seq" false="" atacAtacSeq} \
      ~{true="--dnase-seq" false="" dnaseDnaseSeq} \
      ~{true="--histone" false="" histoneHistone}
  >>>
}