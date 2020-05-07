version 1.0

task Grmpy {
  input {
    Boolean aA
    String badBadAlignFrac
    String badBadAlignUniqKmErLen
    Boolean gG
    String graphGraphSequenceMatching
    Boolean gG
    Boolean zZ
    Boolean helpHelpDefaults
    Boolean helpHelpMd
    Boolean inferInferReadHaplotypes
    String kKLibSequenceMatching
    String kmKmErSequenceMatching
    String logLogAsync
    String logLogFile
    String logLogLevel
    Boolean mM
    Boolean mM
    Boolean oO
    Boolean oO
    String pathPathSequenceMatching
    Boolean progressProgress
    Boolean rR
    String responseResponseFile
    Boolean tT
    Boolean vV
  }
  command <<<
    grmpy \
      ~{true="-A" false="" aA} \
      ~{if defined(badBadAlignFrac) then ("--bad-align-frac " +  '"' + badBadAlignFrac + '"') else ""} \
      ~{if defined(badBadAlignUniqKmErLen) then ("--bad-align-uniq-kmer-len " +  '"' + badBadAlignUniqKmErLen + '"') else ""} \
      ~{true="-G" false="" gG} \
      ~{if defined(graphGraphSequenceMatching) then ("--graph-sequence-matching " +  '"' + graphGraphSequenceMatching + '"') else ""} \
      ~{true="-g" false="" gG} \
      ~{true="-z" false="" zZ} \
      ~{true="--help-defaults" false="" helpHelpDefaults} \
      ~{true="--help-md" false="" helpHelpMd} \
      ~{true="--infer-read-haplotypes" false="" inferInferReadHaplotypes} \
      ~{if defined(kKLibSequenceMatching) then ("--klib-sequence-matching " +  '"' + kKLibSequenceMatching + '"') else ""} \
      ~{if defined(kmKmErSequenceMatching) then ("--kmer-sequence-matching " +  '"' + kmKmErSequenceMatching + '"') else ""} \
      ~{if defined(logLogAsync) then ("--log-async " +  '"' + logLogAsync + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="-m" false="" mM} \
      ~{true="-M" false="" mM} \
      ~{true="-o" false="" oO} \
      ~{true="-O" false="" oO} \
      ~{if defined(pathPathSequenceMatching) then ("--path-sequence-matching " +  '"' + pathPathSequenceMatching + '"') else ""} \
      ~{true="--progress" false="" progressProgress} \
      ~{true="-r" false="" rR} \
      ~{if defined(responseResponseFile) then ("--response-file " +  '"' + responseResponseFile + '"') else ""} \
      ~{true="-t" false="" tT} \
      ~{true="-v" false="" vV}
  >>>
}