version 1.0

task MethylpyDMRfind {
  input {
    Array[String]+ allAllCFiles
    String outputOutputPrefix
    Array[String]+ samplesSamples
    Array[String]+ chromChromS
    Array[String]+ mcMcType
    String numNumProcs
    Int minMinCov
    String dmrDmrMaxDist
    String sigSigCutOff
    String numNumSims
    Int minMinTests
    Int minMinNumDms
    Array[String]+ sampleSampleCategory
    String mcMcMaxDist
    String residResidCutOff
    String keepKeepTempFiles
    Int minMinCluster
    String seedSeed
  }
  command <<<
    methylpy DMRfind \
      ~{if defined(allAllCFiles) then ("--allc-files " +  '"' + allAllCFiles + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(samplesSamples) then ("--samples " +  '"' + samplesSamples + '"') else ""} \
      ~{if defined(chromChromS) then ("--chroms " +  '"' + chromChromS + '"') else ""} \
      ~{if defined(mcMcType) then ("--mc-type " +  '"' + mcMcType + '"') else ""} \
      ~{if defined(numNumProcs) then ("--num-procs " +  '"' + numNumProcs + '"') else ""} \
      ~{if defined(minMinCov) then ("--min-cov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(dmrDmrMaxDist) then ("--dmr-max-dist " +  '"' + dmrDmrMaxDist + '"') else ""} \
      ~{if defined(sigSigCutOff) then ("--sig-cutoff " +  '"' + sigSigCutOff + '"') else ""} \
      ~{if defined(numNumSims) then ("--num-sims " +  '"' + numNumSims + '"') else ""} \
      ~{if defined(minMinTests) then ("--min-tests " +  '"' + minMinTests + '"') else ""} \
      ~{if defined(minMinNumDms) then ("--min-num-dms " +  '"' + minMinNumDms + '"') else ""} \
      ~{if defined(sampleSampleCategory) then ("--sample-category " +  '"' + sampleSampleCategory + '"') else ""} \
      ~{if defined(mcMcMaxDist) then ("--mc-max-dist " +  '"' + mcMcMaxDist + '"') else ""} \
      ~{if defined(residResidCutOff) then ("--resid-cutoff " +  '"' + residResidCutOff + '"') else ""} \
      ~{if defined(keepKeepTempFiles) then ("--keep-temp-files " +  '"' + keepKeepTempFiles + '"') else ""} \
      ~{if defined(minMinCluster) then ("--min-cluster " +  '"' + minMinCluster + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""}
  >>>
}