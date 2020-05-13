version 1.0

task Ftx.py {
  input {
    String outputOutput
    String locationLocation
    String restrictRestrictRegions
    String targetTargetRegions
    Boolean includeIncludeNonPass
    String featureFeatureTable
    String featureFeatureLabel
    String bamBam
    String referenceReference
    Boolean normalizeNormalize
    Boolean fixFixChr
    String? inputInput
  }
  command <<<
    ftx.py \
      ~{inputInput} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(locationLocation) then ("--location " +  '"' + locationLocation + '"') else ""} \
      ~{if defined(restrictRestrictRegions) then ("--restrict-regions " +  '"' + restrictRestrictRegions + '"') else ""} \
      ~{if defined(targetTargetRegions) then ("--target-regions " +  '"' + targetTargetRegions + '"') else ""} \
      ~{true="--include-nonpass" false="" includeIncludeNonPass} \
      ~{if defined(featureFeatureTable) then ("--feature-table " +  '"' + featureFeatureTable + '"') else ""} \
      ~{if defined(featureFeatureLabel) then ("--feature-label " +  '"' + featureFeatureLabel + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{true="--normalize" false="" normalizeNormalize} \
      ~{true="--fix-chr" false="" fixFixChr}
  >>>
}