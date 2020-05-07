version 1.0

task ExonerateServer {
  input {
    Boolean portPort
    Boolean inputInput
    Boolean preloadPreload
    Boolean maxMaxConnections
    Boolean softSoftMaskQuery
    Boolean softSoftMaskTarget
    Boolean hspHspFilter
    Boolean useUseWordDropOff
    Boolean seedSeedRepeat
    Boolean dnaDnaWordLen
    Boolean proteinProteinWordLen
    Boolean codonCodonWordLen
    Boolean dnaDnaHspDropOff
    Boolean proteinProteinHspDropOff
    Boolean codonCodonHspDropOff
    Boolean dnaDnaHspThreshold
    Boolean proteinProteinHspThreshold
    Boolean codonCodonHspThreshold
    Boolean dnaDnaWordLimit
    Boolean proteinProteinWordLimit
    Boolean codonCodonWordLimit
    Boolean geneGeneSeed
    Boolean geneGeneSeedRepeat
  }
  command <<<
    exonerate-server \
      ~{true="--port" false="" portPort} \
      ~{true="--input" false="" inputInput} \
      ~{true="--preload" false="" preloadPreload} \
      ~{true="--maxconnections" false="" maxMaxConnections} \
      ~{true="--softmaskquery" false="" softSoftMaskQuery} \
      ~{true="--softmasktarget" false="" softSoftMaskTarget} \
      ~{true="--hspfilter" false="" hspHspFilter} \
      ~{true="--useworddropoff" false="" useUseWordDropOff} \
      ~{true="--seedrepeat" false="" seedSeedRepeat} \
      ~{true="--dnawordlen" false="" dnaDnaWordLen} \
      ~{true="--proteinwordlen" false="" proteinProteinWordLen} \
      ~{true="--codonwordlen" false="" codonCodonWordLen} \
      ~{true="--dnahspdropoff" false="" dnaDnaHspDropOff} \
      ~{true="--proteinhspdropoff" false="" proteinProteinHspDropOff} \
      ~{true="--codonhspdropoff" false="" codonCodonHspDropOff} \
      ~{true="--dnahspthreshold" false="" dnaDnaHspThreshold} \
      ~{true="--proteinhspthreshold" false="" proteinProteinHspThreshold} \
      ~{true="--codonhspthreshold" false="" codonCodonHspThreshold} \
      ~{true="--dnawordlimit" false="" dnaDnaWordLimit} \
      ~{true="--proteinwordlimit" false="" proteinProteinWordLimit} \
      ~{true="--codonwordlimit" false="" codonCodonWordLimit} \
      ~{true="--geneseed" false="" geneGeneSeed} \
      ~{true="--geneseedrepeat" false="" geneGeneSeedRepeat}
  >>>
}