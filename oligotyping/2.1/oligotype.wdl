version 1.0

task Oligotype {
  input {
    Int minMinBaseQuality
    String selectedSelectedComponents
    Int minMinNumberOfSamples
    Int minMinPercentAbundance
    Int minMinActualAbundance
    Int minMinSubstantiveAbundance
    String sampleSampleNameSeparator
    String limitLimitRepresentativeSequences
    String limitLimitOligoTypesTo
    String excludeExcludeOligoTypes
    Boolean quickQuick
    Boolean noNoFigures
    String blastBlastRefDb
    String colorsColorsListFile
    Boolean doDoBlastSearch
    Boolean noNoDisplay
    Boolean skipSkipGenHtml
    Boolean generateGenerateSets
    Boolean keepKeepTmp
    String cosineCosineSimilarityThreshold
    File sampleSampleMapping
    String projectProject
    Boolean skipSkipCheckInputFile
    Boolean skipSkipBasicAnalyses
    Boolean skipSkipGexFNetworkFile
    Boolean noNoThreading
    Int numberNumberOfThreads
    String? entropyEntropy
  }
  command <<<
    oligotype \
      ~{entropyEntropy} \
      ~{if defined(minMinBaseQuality) then ("--min-base-quality " +  '"' + minMinBaseQuality + '"') else ""} \
      ~{if defined(selectedSelectedComponents) then ("--selected-components " +  '"' + selectedSelectedComponents + '"') else ""} \
      ~{if defined(minMinNumberOfSamples) then ("--min-number-of-samples " +  '"' + minMinNumberOfSamples + '"') else ""} \
      ~{if defined(minMinPercentAbundance) then ("--min-percent-abundance " +  '"' + minMinPercentAbundance + '"') else ""} \
      ~{if defined(minMinActualAbundance) then ("--min-actual-abundance " +  '"' + minMinActualAbundance + '"') else ""} \
      ~{if defined(minMinSubstantiveAbundance) then ("--min-substantive-abundance " +  '"' + minMinSubstantiveAbundance + '"') else ""} \
      ~{if defined(sampleSampleNameSeparator) then ("--sample-name-separator " +  '"' + sampleSampleNameSeparator + '"') else ""} \
      ~{if defined(limitLimitRepresentativeSequences) then ("--limit-representative-sequences " +  '"' + limitLimitRepresentativeSequences + '"') else ""} \
      ~{if defined(limitLimitOligoTypesTo) then ("--limit-oligotypes-to " +  '"' + limitLimitOligoTypesTo + '"') else ""} \
      ~{if defined(excludeExcludeOligoTypes) then ("--exclude-oligotypes " +  '"' + excludeExcludeOligoTypes + '"') else ""} \
      ~{true="--quick" false="" quickQuick} \
      ~{true="--no-figures" false="" noNoFigures} \
      ~{if defined(blastBlastRefDb) then ("--blast-ref-db " +  '"' + blastBlastRefDb + '"') else ""} \
      ~{if defined(colorsColorsListFile) then ("--colors-list-file " +  '"' + colorsColorsListFile + '"') else ""} \
      ~{true="--do-blast-search" false="" doDoBlastSearch} \
      ~{true="--no-display" false="" noNoDisplay} \
      ~{true="--skip-gen-html" false="" skipSkipGenHtml} \
      ~{true="--generate-sets" false="" generateGenerateSets} \
      ~{true="--keep-tmp" false="" keepKeepTmp} \
      ~{if defined(cosineCosineSimilarityThreshold) then ("--cosine-similarity-threshold " +  '"' + cosineCosineSimilarityThreshold + '"') else ""} \
      ~{if defined(sampleSampleMapping) then ("--sample-mapping " +  '"' + sampleSampleMapping + '"') else ""} \
      ~{if defined(projectProject) then ("--project " +  '"' + projectProject + '"') else ""} \
      ~{true="--skip-check-input-file" false="" skipSkipCheckInputFile} \
      ~{true="--skip-basic-analyses" false="" skipSkipBasicAnalyses} \
      ~{true="--skip-gexf-network-file" false="" skipSkipGexFNetworkFile} \
      ~{true="--no-threading" false="" noNoThreading} \
      ~{if defined(numberNumberOfThreads) then ("--number-of-threads " +  '"' + numberNumberOfThreads + '"') else ""}
  >>>
}