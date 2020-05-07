version 1.0

task Mirtrace {
  input {
    Boolean speciesSpecies
    Boolean configConfig
    Boolean adapterAdapter
    Boolean protocolProtocol
    Boolean outputOutputDir
    Boolean forceForce
    Boolean enableEnablePipes
    Boolean writeWriteFastA
    Boolean unUnCollapseFastA
    Boolean titleTitle
    Boolean commentComment
    Boolean numNumThreads
    Boolean verbosityVerbosityLevel
    Boolean globalGlobalMemReserve
    Boolean customCustomDbFolder
    Boolean listListSpecies
    Boolean citeCite
    String? traceTrace
    String? qcQc
  }
  command <<<
    mirtrace \
      ~{traceTrace} \
      ~{true="--species" false="" speciesSpecies} \
      ~{true="--config" false="" configConfig} \
      ~{true="--adapter" false="" adapterAdapter} \
      ~{true="--protocol" false="" protocolProtocol} \
      ~{true="--output-dir" false="" outputOutputDir} \
      ~{true="--force" false="" forceForce} \
      ~{true="--enable-pipes" false="" enableEnablePipes} \
      ~{true="--write-fasta" false="" writeWriteFastA} \
      ~{true="--uncollapse-fasta" false="" unUnCollapseFastA} \
      ~{true="--title" false="" titleTitle} \
      ~{true="--comment" false="" commentComment} \
      ~{true="--num-threads" false="" numNumThreads} \
      ~{true="--verbosity-level" false="" verbosityVerbosityLevel} \
      ~{true="--global-mem-reserve" false="" globalGlobalMemReserve} \
      ~{true="--custom-db-folder" false="" customCustomDbFolder} \
      ~{true="--list-species" false="" listListSpecies} \
      ~{true="--cite" false="" citeCite} \
      ~{qcQc}
  >>>
}