version 1.0

task MbPlotKmerEnrichment {
  input {
    String kmKmEr
    String startStart
    String stopStop
    String widthWidth
    String keyKey
    String filterFilterGff
    String aAWidth
    Boolean removeRemove
    Boolean verboseVerbose
    String? inputInputFile
    String? genomeGenome
    String? outdirOutdir
    String? prefixPrefix
  }
  command <<<
    mb-plot-kmer-enrichment \
      ~{inputInputFile} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(stopStop) then ("--stop " +  '"' + stopStop + '"') else ""} \
      ~{if defined(widthWidth) then ("--width " +  '"' + widthWidth + '"') else ""} \
      ~{if defined(keyKey) then ("--key " +  '"' + keyKey + '"') else ""} \
      ~{if defined(filterFilterGff) then ("--filterGFF " +  '"' + filterFilterGff + '"') else ""} \
      ~{if defined(aAWidth) then ("--awidth " +  '"' + aAWidth + '"') else ""} \
      ~{true="--remove" false="" removeRemove} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{genomeGenome} \
      ~{outdirOutdir} \
      ~{prefixPrefix}
  >>>
}