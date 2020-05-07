version 1.0

task OGenerateGephiNetworkFile {
  input {
    File sampleSampleMapping
    File unitUnitMapping
    Int sampleSampleSize
    Int unitUnitSize
    Int minMinAbundance
    Int minMinSumNormalizedPercent
    Boolean skipSkipSampleLabels
    Boolean skipSkipUnitLabels
    File? fileFile
  }
  command <<<
    o-generate-gephi-network-file \
      ~{fileFile} \
      ~{if defined(sampleSampleMapping) then ("--sample-mapping " +  '"' + sampleSampleMapping + '"') else ""} \
      ~{if defined(unitUnitMapping) then ("--unit-mapping " +  '"' + unitUnitMapping + '"') else ""} \
      ~{if defined(sampleSampleSize) then ("--sample-size " +  '"' + sampleSampleSize + '"') else ""} \
      ~{if defined(unitUnitSize) then ("--unit-size " +  '"' + unitUnitSize + '"') else ""} \
      ~{if defined(minMinAbundance) then ("--min-abundance " +  '"' + minMinAbundance + '"') else ""} \
      ~{if defined(minMinSumNormalizedPercent) then ("--min-sum-normalized-percent " +  '"' + minMinSumNormalizedPercent + '"') else ""} \
      ~{true="--skip-sample-labels" false="" skipSkipSampleLabels} \
      ~{true="--skip-unit-labels" false="" skipSkipUnitLabels}
  >>>
}