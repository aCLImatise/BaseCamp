version 1.0

task Simreadspe {
  input {
    Boolean outputOutput
    Boolean readsReads
    Boolean widthWidth
    Boolean minMinSep
    Boolean maxMaxSep
    Boolean errErr
    Boolean verboseVerbose
    Boolean fastFastQ
    Boolean probProb
    Boolean seedSeed
    Boolean aboutAbout
    String? optionsOptions
    String? fastFastAChromFiles
  }
  command <<<
    simreadspe \
      ~{optionsOptions} \
      ~{true="-output" false="" outputOutput} \
      ~{true="-reads" false="" readsReads} \
      ~{true="-width" false="" widthWidth} \
      ~{true="-min-sep" false="" minMinSep} \
      ~{true="-max-sep" false="" maxMaxSep} \
      ~{true="-err" false="" errErr} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-fastq" false="" fastFastQ} \
      ~{true="-prob" false="" probProb} \
      ~{true="-seed" false="" seedSeed} \
      ~{true="-about" false="" aboutAbout} \
      ~{fastFastAChromFiles}
  >>>
}