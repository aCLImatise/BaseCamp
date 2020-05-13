version 1.0

task RefinemTaxonFilter {
  input {
    String consensusConsensusTaxOn
    String trustedTrustedScaffold
    String commonCommonTaxA
    String congruentCongruentScaffold
    Int minMinClassifiedPer
    Int minMinClassified
    String consensusConsensusScaffold
    String cpusCpus
    Boolean silentSilent
    String? taxTaxOnProfileDir
    String? outputOutputFile
  }
  command <<<
    refinem taxon_filter \
      ~{taxTaxOnProfileDir} \
      ~{if defined(consensusConsensusTaxOn) then ("--consensus_taxon " +  '"' + consensusConsensusTaxOn + '"') else ""} \
      ~{if defined(trustedTrustedScaffold) then ("--trusted_scaffold " +  '"' + trustedTrustedScaffold + '"') else ""} \
      ~{if defined(commonCommonTaxA) then ("--common_taxa " +  '"' + commonCommonTaxA + '"') else ""} \
      ~{if defined(congruentCongruentScaffold) then ("--congruent_scaffold " +  '"' + congruentCongruentScaffold + '"') else ""} \
      ~{if defined(minMinClassifiedPer) then ("--min_classified_per " +  '"' + minMinClassifiedPer + '"') else ""} \
      ~{if defined(minMinClassified) then ("--min_classified " +  '"' + minMinClassified + '"') else ""} \
      ~{if defined(consensusConsensusScaffold) then ("--consensus_scaffold " +  '"' + consensusConsensusScaffold + '"') else ""} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{true="--silent" false="" silentSilent} \
      ~{outputOutputFile}
  >>>
}