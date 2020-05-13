version 1.0

task Paragraph {
  input {
    String badBadAlignFrac
    String badBadAlignNonUniq
    String badBadAlignUniqKmErLen
    Boolean bB
    String graphGraphSequenceMatching
    Boolean gG
    Boolean zZ
    Boolean helpHelpDefaults
    Boolean helpHelpMd
    String kKLibSequenceMatching
    String kmKmErSequenceMatching
    String logLogAsync
    String logLogFile
    String logLogLevel
    Boolean mM
    Boolean aA
    String outputOutputDetailedReadCounts
    Boolean eE
    Boolean oO
    Boolean aA
    Boolean oO
    String outputOutputNodeCoverage
    String outputOutputPathCoverage
    String outputOutputReadHaplotypes
    Boolean vV
    String pathPathSequenceMatching
    Boolean rR
    String responseResponseFile
    Boolean tT
    String threadsThreads
    Boolean validateValidateAlignments
    String variantVariantMinFrac
    String variantVariantMinReads
    Boolean vV
  }
  command <<<
    paragraph \
      ~{if defined(badBadAlignFrac) then ("--bad-align-frac " +  '"' + badBadAlignFrac + '"') else ""} \
      ~{if defined(badBadAlignNonUniq) then ("--bad-align-nonuniq " +  '"' + badBadAlignNonUniq + '"') else ""} \
      ~{if defined(badBadAlignUniqKmErLen) then ("--bad-align-uniq-kmer-len " +  '"' + badBadAlignUniqKmErLen + '"') else ""} \
      ~{true="-b" false="" bB} \
      ~{if defined(graphGraphSequenceMatching) then ("--graph-sequence-matching " +  '"' + graphGraphSequenceMatching + '"') else ""} \
      ~{true="-g" false="" gG} \
      ~{true="-z" false="" zZ} \
      ~{true="--help-defaults" false="" helpHelpDefaults} \
      ~{true="--help-md" false="" helpHelpMd} \
      ~{if defined(kKLibSequenceMatching) then ("--klib-sequence-matching " +  '"' + kKLibSequenceMatching + '"') else ""} \
      ~{if defined(kmKmErSequenceMatching) then ("--kmer-sequence-matching " +  '"' + kmKmErSequenceMatching + '"') else ""} \
      ~{if defined(logLogAsync) then ("--log-async " +  '"' + logLogAsync + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="-M" false="" mM} \
      ~{true="-a" false="" aA} \
      ~{if defined(outputOutputDetailedReadCounts) then ("--output-detailed-read-counts " +  '"' + outputOutputDetailedReadCounts + '"') else ""} \
      ~{true="-E" false="" eE} \
      ~{true="-o" false="" oO} \
      ~{true="-A" false="" aA} \
      ~{true="-O" false="" oO} \
      ~{if defined(outputOutputNodeCoverage) then ("--output-node-coverage " +  '"' + outputOutputNodeCoverage + '"') else ""} \
      ~{if defined(outputOutputPathCoverage) then ("--output-path-coverage " +  '"' + outputOutputPathCoverage + '"') else ""} \
      ~{if defined(outputOutputReadHaplotypes) then ("--output-read-haplotypes " +  '"' + outputOutputReadHaplotypes + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{if defined(pathPathSequenceMatching) then ("--path-sequence-matching " +  '"' + pathPathSequenceMatching + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{if defined(responseResponseFile) then ("--response-file " +  '"' + responseResponseFile + '"') else ""} \
      ~{true="-T" false="" tT} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--validate-alignments" false="" validateValidateAlignments} \
      ~{if defined(variantVariantMinFrac) then ("--variant-min-frac " +  '"' + variantVariantMinFrac + '"') else ""} \
      ~{if defined(variantVariantMinReads) then ("--variant-min-reads " +  '"' + variantVariantMinReads + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}