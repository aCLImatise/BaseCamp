version 1.0

task SubsampleBam {
  input {
    String outputOutputPrefix
    Array[String]+ regionsRegions
    String profileProfile
    String orientationOrientation
    String threadsThreads
    String qualityQuality
    String accuracyAccuracy
    String coverageCoverage
    Int lengthLength
    Boolean anyAnyFail
    Boolean allAllFail
    String patiencePatience
    String strideStride
    Boolean proportionalProportional
    String seedSeed
    String? bamBam
    String? depthDepth
  }
  command <<<
    subsample_bam \
      ~{bamBam} \
      ~{if defined(outputOutputPrefix) then ("--output_prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(profileProfile) then ("--profile " +  '"' + profileProfile + '"') else ""} \
      ~{if defined(orientationOrientation) then ("--orientation " +  '"' + orientationOrientation + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(qualityQuality) then ("--quality " +  '"' + qualityQuality + '"') else ""} \
      ~{if defined(accuracyAccuracy) then ("--accuracy " +  '"' + accuracyAccuracy + '"') else ""} \
      ~{if defined(coverageCoverage) then ("--coverage " +  '"' + coverageCoverage + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{true="--any_fail" false="" anyAnyFail} \
      ~{true="--all_fail" false="" allAllFail} \
      ~{if defined(patiencePatience) then ("--patience " +  '"' + patiencePatience + '"') else ""} \
      ~{if defined(strideStride) then ("--stride " +  '"' + strideStride + '"') else ""} \
      ~{true="--proportional" false="" proportionalProportional} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{depthDepth}
  >>>
}