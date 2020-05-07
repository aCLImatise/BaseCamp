version 1.0

task Snpmutator {
  input {
    Int numNumSimulations
    Int numNumSubstitutions
    Int numNumInsertions
    Int numNumDeletions
    Int randomRandomSeed
    Int poolPool
    Int groupGroup
    Boolean monoMono
    String seqSeqId
    File refRef
    String fastFastADir
    File summarySummary
    File vcfVcf
    File metricsMetrics
    String? inputInputFastAFile
  }
  command <<<
    snpmutator \
      ~{inputInputFastAFile} \
      ~{if defined(numNumSimulations) then ("--num-simulations " +  '"' + numNumSimulations + '"') else ""} \
      ~{if defined(numNumSubstitutions) then ("--num-substitutions " +  '"' + numNumSubstitutions + '"') else ""} \
      ~{if defined(numNumInsertions) then ("--num-insertions " +  '"' + numNumInsertions + '"') else ""} \
      ~{if defined(numNumDeletions) then ("--num-deletions " +  '"' + numNumDeletions + '"') else ""} \
      ~{if defined(randomRandomSeed) then ("--random-seed " +  '"' + randomRandomSeed + '"') else ""} \
      ~{if defined(poolPool) then ("--pool " +  '"' + poolPool + '"') else ""} \
      ~{if defined(groupGroup) then ("--group " +  '"' + groupGroup + '"') else ""} \
      ~{true="--mono" false="" monoMono} \
      ~{if defined(seqSeqId) then ("--seqid " +  '"' + seqSeqId + '"') else ""} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(fastFastADir) then ("--fasta-dir " +  '"' + fastFastADir + '"') else ""} \
      ~{if defined(summarySummary) then ("--summary " +  '"' + summarySummary + '"') else ""} \
      ~{if defined(vcfVcf) then ("--vcf " +  '"' + vcfVcf + '"') else ""} \
      ~{if defined(metricsMetrics) then ("--metrics " +  '"' + metricsMetrics + '"') else ""}
  >>>
}