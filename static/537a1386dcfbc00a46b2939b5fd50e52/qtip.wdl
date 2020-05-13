version 1.0

task Qtip {
  input {
    Array[File]+ refRef
    Array[File]+ uU
    Array[File]+ m1M1
    Array[File]+ m2M2
    File indexIndex
    Int seedSeed
    Int maxMaxAllowedFraGlen
    Int inputInputModelSize
    Int simSimUnpMin
    Int simSimConcMin
    Int simSimDiscMin
    Int simSimBadEndMin
    String simSimFunction
    String simSimFactor
    Int wiggleWiggle
    File bt2Bt2Exe
    File bwaBwaExe
    File snapSnapExe
    String alignerAligner
    Boolean writeWriteOrigMapq
    Boolean writeWritePreciseMapq
    String origOrigMapqFlag
    String precisePreciseMapqFlag
    Boolean keepKeepZTz
    String modelModelFamily
    Int numNumTrees
    Float maxMaxFeatures
    Int maxMaxLeafNodes
    Float learningLearningRate
    String optimizationOptimizationTolerance
    Float reReWeightRatio
    Boolean reReWeightMapq
    Float reReWeightMapqOffset
    Boolean collapseCollapse
    Int maxMaxRows
    Boolean noNoOob
    Boolean skipSkipRewrite
    Boolean profileProfileMemory
    Boolean predictPredictForTraining
    Boolean tryTryIncludeMapq
    Float subsamplingSubsamplingSeries
    Int trialsTrials
    Boolean assessAssessAccuracy
    Int assessAssessLimit
    File tempTempDirectory
    File outputOutputDirectory
    File vanillaVanillaOutput
    Boolean keepKeepIntermediates
    Boolean profileProfile
    Boolean verboseVerbose
  }
  command <<<
    qtip \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(uU) then ("--U " +  '"' + uU + '"') else ""} \
      ~{if defined(m1M1) then ("--m1 " +  '"' + m1M1 + '"') else ""} \
      ~{if defined(m2M2) then ("--m2 " +  '"' + m2M2 + '"') else ""} \
      ~{if defined(indexIndex) then ("--index " +  '"' + indexIndex + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(maxMaxAllowedFraGlen) then ("--max-allowed-fraglen " +  '"' + maxMaxAllowedFraGlen + '"') else ""} \
      ~{if defined(inputInputModelSize) then ("--input-model-size " +  '"' + inputInputModelSize + '"') else ""} \
      ~{if defined(simSimUnpMin) then ("--sim-unp-min " +  '"' + simSimUnpMin + '"') else ""} \
      ~{if defined(simSimConcMin) then ("--sim-conc-min " +  '"' + simSimConcMin + '"') else ""} \
      ~{if defined(simSimDiscMin) then ("--sim-disc-min " +  '"' + simSimDiscMin + '"') else ""} \
      ~{if defined(simSimBadEndMin) then ("--sim-bad-end-min " +  '"' + simSimBadEndMin + '"') else ""} \
      ~{if defined(simSimFunction) then ("--sim-function " +  '"' + simSimFunction + '"') else ""} \
      ~{if defined(simSimFactor) then ("--sim-factor " +  '"' + simSimFactor + '"') else ""} \
      ~{if defined(wiggleWiggle) then ("--wiggle " +  '"' + wiggleWiggle + '"') else ""} \
      ~{if defined(bt2Bt2Exe) then ("--bt2-exe " +  '"' + bt2Bt2Exe + '"') else ""} \
      ~{if defined(bwaBwaExe) then ("--bwa-exe " +  '"' + bwaBwaExe + '"') else ""} \
      ~{if defined(snapSnapExe) then ("--snap-exe " +  '"' + snapSnapExe + '"') else ""} \
      ~{if defined(alignerAligner) then ("--aligner " +  '"' + alignerAligner + '"') else ""} \
      ~{true="--write-orig-mapq" false="" writeWriteOrigMapq} \
      ~{true="--write-precise-mapq" false="" writeWritePreciseMapq} \
      ~{if defined(origOrigMapqFlag) then ("--orig-mapq-flag " +  '"' + origOrigMapqFlag + '"') else ""} \
      ~{if defined(precisePreciseMapqFlag) then ("--precise-mapq-flag " +  '"' + precisePreciseMapqFlag + '"') else ""} \
      ~{true="--keep-ztz" false="" keepKeepZTz} \
      ~{if defined(modelModelFamily) then ("--model-family " +  '"' + modelModelFamily + '"') else ""} \
      ~{if defined(numNumTrees) then ("--num-trees " +  '"' + numNumTrees + '"') else ""} \
      ~{if defined(maxMaxFeatures) then ("--max-features " +  '"' + maxMaxFeatures + '"') else ""} \
      ~{if defined(maxMaxLeafNodes) then ("--max-leaf-nodes " +  '"' + maxMaxLeafNodes + '"') else ""} \
      ~{if defined(learningLearningRate) then ("--learning-rate " +  '"' + learningLearningRate + '"') else ""} \
      ~{if defined(optimizationOptimizationTolerance) then ("--optimization-tolerance " +  '"' + optimizationOptimizationTolerance + '"') else ""} \
      ~{if defined(reReWeightRatio) then ("--reweight-ratio " +  '"' + reReWeightRatio + '"') else ""} \
      ~{true="--reweight-mapq" false="" reReWeightMapq} \
      ~{if defined(reReWeightMapqOffset) then ("--reweight-mapq-offset " +  '"' + reReWeightMapqOffset + '"') else ""} \
      ~{true="--collapse" false="" collapseCollapse} \
      ~{if defined(maxMaxRows) then ("--max-rows " +  '"' + maxMaxRows + '"') else ""} \
      ~{true="--no-oob" false="" noNoOob} \
      ~{true="--skip-rewrite" false="" skipSkipRewrite} \
      ~{true="--profile-memory" false="" profileProfileMemory} \
      ~{true="--predict-for-training" false="" predictPredictForTraining} \
      ~{true="--try-include-mapq" false="" tryTryIncludeMapq} \
      ~{if defined(subsamplingSubsamplingSeries) then ("--subsampling-series " +  '"' + subsamplingSubsamplingSeries + '"') else ""} \
      ~{if defined(trialsTrials) then ("--trials " +  '"' + trialsTrials + '"') else ""} \
      ~{true="--assess-accuracy" false="" assessAssessAccuracy} \
      ~{if defined(assessAssessLimit) then ("--assess-limit " +  '"' + assessAssessLimit + '"') else ""} \
      ~{if defined(tempTempDirectory) then ("--temp-directory " +  '"' + tempTempDirectory + '"') else ""} \
      ~{if defined(outputOutputDirectory) then ("--output-directory " +  '"' + outputOutputDirectory + '"') else ""} \
      ~{if defined(vanillaVanillaOutput) then ("--vanilla-output " +  '"' + vanillaVanillaOutput + '"') else ""} \
      ~{true="--keep-intermediates" false="" keepKeepIntermediates} \
      ~{true="--profile" false="" profileProfile} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}