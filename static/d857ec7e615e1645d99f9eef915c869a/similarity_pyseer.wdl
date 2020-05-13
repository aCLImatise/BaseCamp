version 1.0

task SimilarityPyseer {
  input {
    String kmKmErs
    String vcfVcf
    String presPres
    Int minMinAf
    Int maxMaxAf
    Int maxMaxMissing
    Boolean uncompressedUncompressed
    String? samplesSamples
  }
  command <<<
    similarity_pyseer \
      ~{samplesSamples} \
      ~{if defined(kmKmErs) then ("--kmers " +  '"' + kmKmErs + '"') else ""} \
      ~{if defined(vcfVcf) then ("--vcf " +  '"' + vcfVcf + '"') else ""} \
      ~{if defined(presPres) then ("--pres " +  '"' + presPres + '"') else ""} \
      ~{if defined(minMinAf) then ("--min-af " +  '"' + minMinAf + '"') else ""} \
      ~{if defined(maxMaxAf) then ("--max-af " +  '"' + maxMaxAf + '"') else ""} \
      ~{if defined(maxMaxMissing) then ("--max-missing " +  '"' + maxMaxMissing + '"') else ""} \
      ~{true="--uncompressed" false="" uncompressedUncompressed}
  >>>
}