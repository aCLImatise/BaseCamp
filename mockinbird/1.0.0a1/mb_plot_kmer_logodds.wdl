version 1.0

task MbPlotKmerLogodds {
  input {
    String kmKmEr
    String gffGff
    String keyKey
    Boolean quantilesQuantiles
    Boolean verboseVerbose
    Boolean keepKeepTmpFiles
    String? parParClip
    String? outdirOutdir
    String? prefixPrefix
    String? genomeGenome
    String? negNegSet
  }
  command <<<
    mb-plot-kmer-logodds \
      ~{parParClip} \
      ~{if defined(kmKmEr) then ("--kmer " +  '"' + kmKmEr + '"') else ""} \
      ~{if defined(gffGff) then ("--gff " +  '"' + gffGff + '"') else ""} \
      ~{if defined(keyKey) then ("--key " +  '"' + keyKey + '"') else ""} \
      ~{true="--quantiles" false="" quantilesQuantiles} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--keep-tmp-files" false="" keepKeepTmpFiles} \
      ~{outdirOutdir} \
      ~{prefixPrefix} \
      ~{genomeGenome} \
      ~{negNegSet}
  >>>
}