version 1.0

task Simreadsbs {
  input {
    Boolean outputOutput
    Boolean readsReads
    Boolean widthWidth
    Boolean errErr
    Boolean verboseVerbose
    Boolean fastFastQ
    Boolean probProb
    Boolean methMeth
    Boolean bsBs
    Boolean agAg
    Boolean seedSeed
    Boolean aboutAbout
    String? optionsOptions
    String? fastFastAChromFiles
  }
  command <<<
    simreadsbs \
      ~{optionsOptions} \
      ~{true="-output" false="" outputOutput} \
      ~{true="-reads" false="" readsReads} \
      ~{true="-width" false="" widthWidth} \
      ~{true="-err" false="" errErr} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-fastq" false="" fastFastQ} \
      ~{true="-prob" false="" probProb} \
      ~{true="-meth" false="" methMeth} \
      ~{true="-bs" false="" bsBs} \
      ~{true="-ag" false="" agAg} \
      ~{true="-seed" false="" seedSeed} \
      ~{true="-about" false="" aboutAbout} \
      ~{fastFastAChromFiles}
  >>>
}