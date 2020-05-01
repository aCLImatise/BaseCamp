version 1.0

task Decompose {
  input {
    Float minMinEntropy
    Boolean skipSkipMNormalization
    Int numberNumberOfDiscriminants
    Int minMinActualAbundance
    Int minMinSubstantiveAbundance
    Int maximumMaximumVariationAllowed
    String sampleSampleNameSeparator
    String outputOutputDirectory
    String projectProject
    Boolean generateGenerateFrequencyCurves
    Boolean skipSkipRemovingOutliers
    Boolean mergeMergeHomopolymerSplits
    Boolean relocateRelocateOutliers
    Boolean storeStoreTopologyDict
    Boolean keepKeepTmp
    Boolean noNoThreading
    Int numberNumberOfThreads
    File sampleSampleMapping
    Boolean skipSkipGenHtml
    Boolean skipSkipGenFigures
    Boolean skipSkipCheckInputFile
    Boolean skipSkipGexFFiles
    Boolean quickQuick
    File? fileFilePath
  }
  command <<<
    decompose \
      ~{fileFilePath} \
      ~{if defined(minMinEntropy) then ("--min-entropy " +  '"' + minMinEntropy + '"') else ""} \
      ~{true="--skip-m-normalization" false="" skipSkipMNormalization} \
      ~{if defined(numberNumberOfDiscriminants) then ("--number-of-discriminants " +  '"' + numberNumberOfDiscriminants + '"') else ""} \
      ~{if defined(minMinActualAbundance) then ("--min-actual-abundance " +  '"' + minMinActualAbundance + '"') else ""} \
      ~{if defined(minMinSubstantiveAbundance) then ("--min-substantive-abundance " +  '"' + minMinSubstantiveAbundance + '"') else ""} \
      ~{if defined(maximumMaximumVariationAllowed) then ("--maximum-variation-allowed " +  '"' + maximumMaximumVariationAllowed + '"') else ""} \
      ~{if defined(sampleSampleNameSeparator) then ("--sample-name-separator " +  '"' + sampleSampleNameSeparator + '"') else ""} \
      ~{if defined(outputOutputDirectory) then ("--output-directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{if defined(projectProject) then ("--project " +  '"' + projectProject + '"') else ""} \
      ~{true="--generate-frequency-curves" false="" generateGenerateFrequencyCurves} \
      ~{true="--skip-removing-outliers" false="" skipSkipRemovingOutliers} \
      ~{true="--merge-homopolymer-splits" false="" mergeMergeHomopolymerSplits} \
      ~{true="--relocate-outliers" false="" relocateRelocateOutliers} \
      ~{true="--store-topology-dict" false="" storeStoreTopologyDict} \
      ~{true="--keep-tmp" false="" keepKeepTmp} \
      ~{true="--no-threading" false="" noNoThreading} \
      ~{if defined(numberNumberOfThreads) then ("--number-of-threads " +  '"' + numberNumberOfThreads + '"') else ""} \
      ~{if defined(sampleSampleMapping) then ("--sample-mapping " +  '"' + sampleSampleMapping + '"') else ""} \
      ~{true="--skip-gen-html" false="" skipSkipGenHtml} \
      ~{true="--skip-gen-figures" false="" skipSkipGenFigures} \
      ~{true="--skip-check-input-file" false="" skipSkipCheckInputFile} \
      ~{true="--skip-gexf-files" false="" skipSkipGexFFiles} \
      ~{true="--quick" false="" quickQuick}
  >>>
}