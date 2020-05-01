version 1.0

task EnetPredictPyseer {
  input {
    String thresholdThreshold
    String lineageLineageClusters
    String trueTrueValues
    Boolean ignoreIgnoreMissing
    String kmKmErs
    String vcfVcf
    String presPres
    String burdenBurden
    Boolean uncompressedUncompressed
    String covariatesCovariates
    Boolean useUseCovariates
    String? modelModel
    String? samplesSamples
  }
  command <<<
    enet_predict_pyseer \
      ~{modelModel} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{if defined(lineageLineageClusters) then ("--lineage-clusters " +  '"' + lineageLineageClusters + '"') else ""} \
      ~{if defined(trueTrueValues) then ("--true-values " +  '"' + trueTrueValues + '"') else ""} \
      ~{true="--ignore-missing" false="" ignoreIgnoreMissing} \
      ~{if defined(kmKmErs) then ("--kmers " +  '"' + kmKmErs + '"') else ""} \
      ~{if defined(vcfVcf) then ("--vcf " +  '"' + vcfVcf + '"') else ""} \
      ~{if defined(presPres) then ("--pres " +  '"' + presPres + '"') else ""} \
      ~{if defined(burdenBurden) then ("--burden " +  '"' + burdenBurden + '"') else ""} \
      ~{true="--uncompressed" false="" uncompressedUncompressed} \
      ~{if defined(covariatesCovariates) then ("--covariates " +  '"' + covariatesCovariates + '"') else ""} \
      ~{true="--use-covariates" false="" useUseCovariates} \
      ~{samplesSamples}
  >>>
}