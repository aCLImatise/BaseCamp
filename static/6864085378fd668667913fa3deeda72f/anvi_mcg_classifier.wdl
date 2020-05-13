version 1.0

task AnviMcgClassifier {
  input {
    String profileProfileDb
    String contigsContigsDb
    File outputOutputFilePrefix
    String collectionCollectionName
    String binBinId
    File binBinIdsFile
    File excludeExcludeSamples
    File includeIncludeSamples
    Boolean genGenFigures
    Boolean getGetSamplesStatsOnly
    Boolean overwriteOverwriteOutputDestinations
    String genomeGenomeDetectionUncertainty
    String outliersOutliersThreshold
    Boolean zerosZerosAreOutliers
  }
  command <<<
    anvi-mcg-classifier \
      ~{if defined(profileProfileDb) then ("--profile-db " +  '"' + profileProfileDb + '"') else ""} \
      ~{if defined(contigsContigsDb) then ("--contigs-db " +  '"' + contigsContigsDb + '"') else ""} \
      ~{if defined(outputOutputFilePrefix) then ("--output-file-prefix " +  '"' + outputOutputFilePrefix + '"') else ""} \
      ~{if defined(collectionCollectionName) then ("--collection-name " +  '"' + collectionCollectionName + '"') else ""} \
      ~{if defined(binBinId) then ("--bin-id " +  '"' + binBinId + '"') else ""} \
      ~{if defined(binBinIdsFile) then ("--bin-ids-file " +  '"' + binBinIdsFile + '"') else ""} \
      ~{if defined(excludeExcludeSamples) then ("--exclude-samples " +  '"' + excludeExcludeSamples + '"') else ""} \
      ~{if defined(includeIncludeSamples) then ("--include-samples " +  '"' + includeIncludeSamples + '"') else ""} \
      ~{true="--gen-figures" false="" genGenFigures} \
      ~{true="--get-samples-stats-only" false="" getGetSamplesStatsOnly} \
      ~{true="--overwrite-output-destinations" false="" overwriteOverwriteOutputDestinations} \
      ~{if defined(genomeGenomeDetectionUncertainty) then ("--genome-detection-uncertainty " +  '"' + genomeGenomeDetectionUncertainty + '"') else ""} \
      ~{if defined(outliersOutliersThreshold) then ("--outliers-threshold " +  '"' + outliersOutliersThreshold + '"') else ""} \
      ~{true="--zeros-are-outliers" false="" zerosZerosAreOutliers}
  >>>
}