version 1.0

task BiopetVcfstats {
  input {
    String logLogLevel
    File inputInputFile
    File referenceReferenceFile
    File outputOutputDir
    File intervalsIntervals
    String infoInfoTag
    String genotypeGenotypeTag
    String sampleSampleToSampleMinDepth
    String binsizeBinsize
    String maxMaxContigsInSingleJob
    Boolean writeWriteBinStats
    String localLocalThreads
    Boolean notNotWriteContigStats
    Boolean skipSkipGeneral
    Boolean skipSkipGenotype
    Boolean skipSkipSampleDistributions
    Boolean skipSkipSampleCompare
    Boolean repartitionRepartition
    Boolean executeExecuteModulesAsJobs
    String sparkSparkMaster
    String sparkSparkExecutorMemory
    Boolean sparkSparkConfigValue
  }
  command <<<
    biopet-vcfstats \
      ~{if defined(logLogLevel) then ("--log_level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(inputInputFile) then ("--inputFile " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(referenceReferenceFile) then ("--referenceFile " +  '"' + referenceReferenceFile + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--outputDir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(intervalsIntervals) then ("--intervals " +  '"' + intervalsIntervals + '"') else ""} \
      ~{if defined(infoInfoTag) then ("--infoTag " +  '"' + infoInfoTag + '"') else ""} \
      ~{if defined(genotypeGenotypeTag) then ("--genotypeTag " +  '"' + genotypeGenotypeTag + '"') else ""} \
      ~{if defined(sampleSampleToSampleMinDepth) then ("--sampleToSampleMinDepth " +  '"' + sampleSampleToSampleMinDepth + '"') else ""} \
      ~{if defined(binsizeBinsize) then ("--binSize " +  '"' + binsizeBinsize + '"') else ""} \
      ~{if defined(maxMaxContigsInSingleJob) then ("--maxContigsInSingleJob " +  '"' + maxMaxContigsInSingleJob + '"') else ""} \
      ~{true="--writeBinStats" false="" writeWriteBinStats} \
      ~{if defined(localLocalThreads) then ("--localThreads " +  '"' + localLocalThreads + '"') else ""} \
      ~{true="--notWriteContigStats" false="" notNotWriteContigStats} \
      ~{true="--skipGeneral" false="" skipSkipGeneral} \
      ~{true="--skipGenotype" false="" skipSkipGenotype} \
      ~{true="--skipSampleDistributions" false="" skipSkipSampleDistributions} \
      ~{true="--skipSampleCompare" false="" skipSkipSampleCompare} \
      ~{true="--repartition" false="" repartitionRepartition} \
      ~{true="--executeModulesAsJobs" false="" executeExecuteModulesAsJobs} \
      ~{if defined(sparkSparkMaster) then ("--sparkMaster " +  '"' + sparkSparkMaster + '"') else ""} \
      ~{if defined(sparkSparkExecutorMemory) then ("--sparkExecutorMemory " +  '"' + sparkSparkExecutorMemory + '"') else ""} \
      ~{true="--sparkConfigValue" false="" sparkSparkConfigValue}
  >>>
}