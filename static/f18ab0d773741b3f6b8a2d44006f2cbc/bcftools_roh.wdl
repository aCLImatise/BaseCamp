version 1.0

task BcftoolsRoh {
  input {
    Float afAfDflt
    String afAfTag
    File afAfFile
    Boolean bufferBufferSize
    Boolean estimateEstimateAf
    String excludeExclude
    Float gtsGtsOnly
    String includeInclude
    Boolean ignoreIgnoreHomRef
    Boolean skipSkipIndels
    File geneticGeneticMap
    Float recRecRate
    File outputOutput
    Boolean outputOutputType
    String regionsRegions
    File regionsRegionsFile
    String samplesSamples
    File samplesSamplesFile
    String targetsTargets
    File targetsTargetsFile
    Int threadsThreads
    Float hwHwToAz
    Float azAzToHw
    Float viterbiViterbiTraining
    String? inInVcfGz
  }
  command <<<
    bcftools roh \
      ~{inInVcfGz} \
      ~{if defined(afAfDflt) then ("--AF-dflt " +  '"' + afAfDflt + '"') else ""} \
      ~{if defined(afAfTag) then ("--AF-tag " +  '"' + afAfTag + '"') else ""} \
      ~{if defined(afAfFile) then ("--AF-file " +  '"' + afAfFile + '"') else ""} \
      ~{true="--buffer-size" false="" bufferBufferSize} \
      ~{true="--estimate-AF" false="" estimateEstimateAf} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(gtsGtsOnly) then ("--GTs-only " +  '"' + gtsGtsOnly + '"') else ""} \
      ~{if defined(includeInclude) then ("--include " +  '"' + includeInclude + '"') else ""} \
      ~{true="--ignore-homref" false="" ignoreIgnoreHomRef} \
      ~{true="--skip-indels" false="" skipSkipIndels} \
      ~{if defined(geneticGeneticMap) then ("--genetic-map " +  '"' + geneticGeneticMap + '"') else ""} \
      ~{if defined(recRecRate) then ("--rec-rate " +  '"' + recRecRate + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--output-type" false="" outputOutputType} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(regionsRegionsFile) then ("--regions-file " +  '"' + regionsRegionsFile + '"') else ""} \
      ~{if defined(samplesSamples) then ("--samples " +  '"' + samplesSamples + '"') else ""} \
      ~{if defined(samplesSamplesFile) then ("--samples-file " +  '"' + samplesSamplesFile + '"') else ""} \
      ~{if defined(targetsTargets) then ("--targets " +  '"' + targetsTargets + '"') else ""} \
      ~{if defined(targetsTargetsFile) then ("--targets-file " +  '"' + targetsTargetsFile + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(hwHwToAz) then ("--hw-to-az " +  '"' + hwHwToAz + '"') else ""} \
      ~{if defined(azAzToHw) then ("--az-to-hw " +  '"' + azAzToHw + '"') else ""} \
      ~{if defined(viterbiViterbiTraining) then ("--viterbi-training " +  '"' + viterbiViterbiTraining + '"') else ""}
  >>>
}