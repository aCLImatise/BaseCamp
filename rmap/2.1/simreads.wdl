version 1.0

task Simreads {
  input {
    Boolean outputOutput
    Boolean readsReads
    Boolean widthWidth
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
    simreads \
      ~{optionsOptions} \
      ~{true="-output" false="" outputOutput} \
      ~{true="-reads" false="" readsReads} \
      ~{true="-width" false="" widthWidth} \
      ~{true="-err" false="" errErr} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-fastq" false="" fastFastQ} \
      ~{true="-prob" false="" probProb} \
      ~{true="-seed" false="" seedSeed} \
      ~{true="-about" false="" aboutAbout} \
      ~{fastFastAChromFiles}
  >>>
}