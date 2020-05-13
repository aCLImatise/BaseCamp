version 1.0

task MbAdapterClipper {
  input {
    String clipClipLen
    Int minMinLen
    String ntNtBarcode5Prime
    String ntNtBarcode3Prime
    Boolean verboseVerbose
    Boolean clippedClipped5PrimeBc
    String plotPlotDir
    String? inputInputFastQ
    String? outputOutputFastQ
    String? primePrime5Adapter
    String? primePrime3Adapter
  }
  command <<<
    mb-adapter-clipper \
      ~{inputInputFastQ} \
      ~{if defined(clipClipLen) then ("--clip_len " +  '"' + clipClipLen + '"') else ""} \
      ~{if defined(minMinLen) then ("--min_len " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(ntNtBarcode5Prime) then ("--nt_barcode_5prime " +  '"' + ntNtBarcode5Prime + '"') else ""} \
      ~{if defined(ntNtBarcode3Prime) then ("--nt_barcode_3prime " +  '"' + ntNtBarcode3Prime + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--clipped_5prime_bc" false="" clippedClipped5PrimeBc} \
      ~{if defined(plotPlotDir) then ("--plot_dir " +  '"' + plotPlotDir + '"') else ""} \
      ~{outputOutputFastQ} \
      ~{primePrime5Adapter} \
      ~{primePrime3Adapter}
  >>>
}