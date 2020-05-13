version 1.0

task Gencore {
  input {
    Boolean highHighQual
    Boolean moderateModerateQual
    Boolean lowLowQual
    Boolean coverageCoverageSampling
    Boolean jsonJson
    Boolean debugDebug
    Boolean quitQuitAfterContig
  }
  command <<<
    gencore \
      ~{true="--high_qual" false="" highHighQual} \
      ~{true="--moderate_qual" false="" moderateModerateQual} \
      ~{true="--low_qual" false="" lowLowQual} \
      ~{true="--coverage_sampling" false="" coverageCoverageSampling} \
      ~{true="--json" false="" jsonJson} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--quit_after_contig" false="" quitQuitAfterContig}
  >>>
}