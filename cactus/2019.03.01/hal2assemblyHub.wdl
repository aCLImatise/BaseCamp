version 1.0

task Hal2assemblyHub.py {
  input {
    String hubHub
    String shortShortLabel
    String longLongLabel
    String emailEmail
    String genomesGenomes
    String renameRename
    String treeTree
    String urlUrl
    String twoTwoBitDir
    Boolean lodLod
    String lodLodTxtFile
    String lodLodDir
    String lodLodMaxBlock
    String lodLodScale
    String lodLodMaxDna
    Boolean lodLodInMemory
    String lodLodMinSeqFrac
    String lodLodMinCovFrac
    String lodLodChunk
    String bedBedDirs
    String finalFinalBigBedDirs
    String beddirs2Beddirs2
    String finalFinalBigbeddirs2
    Boolean noNoBedLiftOver
    Boolean tabbedTabbed
    String wigWigDirs
    String finalFinalBigwigDirs
    Boolean noNoWigLiftOver
    String rmsRmsKDir
    Boolean gcGcContent
    Boolean alignAlignAbility
    String conservationConservation
    String conservationConservationDir
    String conservationConservationGenomeName
    String conservationConservationTree
    String conservationConservationNumProc
    Boolean cladeCladeExclusiveRegions
    Int maxMaxOutGroupGenomes
    Int minMinInGroupGenomes
    Boolean selfSelfAlignmentSnakes
    Boolean logoffLogoff
    Boolean loginfoLoginfo
    Boolean logLogDebug
    String loglevelLoglevel
    String logLogFile
    Boolean rotatingRotatingLogging
    String jobJobTree
    Boolean statsStats
    String batchBatchSystem
    Int maxMaxThreads
    String parasolParasolCommand
    String defaultDefaultMemory
    String defaultDefaultCpu
    Int maxMaxCpus
    Int maxMaxMemory
    String retryRetryCount
    Int maxMaxJobDuration
    String rescueRescueJobsFrequency
    String bigBigBatchSystem
    String bigBigMemoryThreshold
    String bigBigCpuThreshold
    String bigBigMaxCpus
    String bigBigMaxMemory
    String jobJobTime
    Int maxMaxLogFileSize
    String commandCommand
    String? halHalFile
    String? outputOutputDirectory
  }
  command <<<
    hal2assemblyHub.py \
      ~{halHalFile} \
      ~{if defined(hubHub) then ("--hub " +  '"' + hubHub + '"') else ""} \
      ~{if defined(shortShortLabel) then ("--shortLabel " +  '"' + shortShortLabel + '"') else ""} \
      ~{if defined(longLongLabel) then ("--longLabel " +  '"' + longLongLabel + '"') else ""} \
      ~{if defined(emailEmail) then ("--email " +  '"' + emailEmail + '"') else ""} \
      ~{if defined(genomesGenomes) then ("--genomes " +  '"' + genomesGenomes + '"') else ""} \
      ~{if defined(renameRename) then ("--rename " +  '"' + renameRename + '"') else ""} \
      ~{if defined(treeTree) then ("--tree " +  '"' + treeTree + '"') else ""} \
      ~{if defined(urlUrl) then ("--url " +  '"' + urlUrl + '"') else ""} \
      ~{if defined(twoTwoBitDir) then ("--twobitdir " +  '"' + twoTwoBitDir + '"') else ""} \
      ~{true="--lod" false="" lodLod} \
      ~{if defined(lodLodTxtFile) then ("--lodTxtFile " +  '"' + lodLodTxtFile + '"') else ""} \
      ~{if defined(lodLodDir) then ("--lodDir " +  '"' + lodLodDir + '"') else ""} \
      ~{if defined(lodLodMaxBlock) then ("--lodMaxBlock " +  '"' + lodLodMaxBlock + '"') else ""} \
      ~{if defined(lodLodScale) then ("--lodScale " +  '"' + lodLodScale + '"') else ""} \
      ~{if defined(lodLodMaxDna) then ("--lodMaxDNA " +  '"' + lodLodMaxDna + '"') else ""} \
      ~{true="--lodInMemory" false="" lodLodInMemory} \
      ~{if defined(lodLodMinSeqFrac) then ("--lodMinSeqFrac " +  '"' + lodLodMinSeqFrac + '"') else ""} \
      ~{if defined(lodLodMinCovFrac) then ("--lodMinCovFrac " +  '"' + lodLodMinCovFrac + '"') else ""} \
      ~{if defined(lodLodChunk) then ("--lodChunk " +  '"' + lodLodChunk + '"') else ""} \
      ~{if defined(bedBedDirs) then ("--bedDirs " +  '"' + bedBedDirs + '"') else ""} \
      ~{if defined(finalFinalBigBedDirs) then ("--finalBigBedDirs " +  '"' + finalFinalBigBedDirs + '"') else ""} \
      ~{if defined(beddirs2Beddirs2) then ("--bedDirs2 " +  '"' + beddirs2Beddirs2 + '"') else ""} \
      ~{if defined(finalFinalBigbeddirs2) then ("--finalBigBedDirs2 " +  '"' + finalFinalBigbeddirs2 + '"') else ""} \
      ~{true="--noBedLiftover" false="" noNoBedLiftOver} \
      ~{true="--tabBed" false="" tabbedTabbed} \
      ~{if defined(wigWigDirs) then ("--wigDirs " +  '"' + wigWigDirs + '"') else ""} \
      ~{if defined(finalFinalBigwigDirs) then ("--finalBigwigDirs " +  '"' + finalFinalBigwigDirs + '"') else ""} \
      ~{true="--nowigLiftover" false="" noNoWigLiftOver} \
      ~{if defined(rmsRmsKDir) then ("--rmskDir " +  '"' + rmsRmsKDir + '"') else ""} \
      ~{true="--gcContent" false="" gcGcContent} \
      ~{true="--alignability" false="" alignAlignAbility} \
      ~{if defined(conservationConservation) then ("--conservation " +  '"' + conservationConservation + '"') else ""} \
      ~{if defined(conservationConservationDir) then ("--conservationDir " +  '"' + conservationConservationDir + '"') else ""} \
      ~{if defined(conservationConservationGenomeName) then ("--conservationGenomeName " +  '"' + conservationConservationGenomeName + '"') else ""} \
      ~{if defined(conservationConservationTree) then ("--conservationTree " +  '"' + conservationConservationTree + '"') else ""} \
      ~{if defined(conservationConservationNumProc) then ("--conservationNumProc " +  '"' + conservationConservationNumProc + '"') else ""} \
      ~{true="--cladeExclusiveRegions" false="" cladeCladeExclusiveRegions} \
      ~{if defined(maxMaxOutGroupGenomes) then ("--maxOutgroupGenomes " +  '"' + maxMaxOutGroupGenomes + '"') else ""} \
      ~{if defined(minMinInGroupGenomes) then ("--minIngroupGenomes " +  '"' + minMinInGroupGenomes + '"') else ""} \
      ~{true="--selfAlignmentSnakes" false="" selfSelfAlignmentSnakes} \
      ~{true="--logOff" false="" logoffLogoff} \
      ~{true="--logInfo" false="" loginfoLoginfo} \
      ~{true="--logDebug" false="" logLogDebug} \
      ~{if defined(loglevelLoglevel) then ("--logLevel " +  '"' + loglevelLoglevel + '"') else ""} \
      ~{if defined(logLogFile) then ("--logFile " +  '"' + logLogFile + '"') else ""} \
      ~{true="--rotatingLogging" false="" rotatingRotatingLogging} \
      ~{if defined(jobJobTree) then ("--jobTree " +  '"' + jobJobTree + '"') else ""} \
      ~{true="--stats" false="" statsStats} \
      ~{if defined(batchBatchSystem) then ("--batchSystem " +  '"' + batchBatchSystem + '"') else ""} \
      ~{if defined(maxMaxThreads) then ("--maxThreads " +  '"' + maxMaxThreads + '"') else ""} \
      ~{if defined(parasolParasolCommand) then ("--parasolCommand " +  '"' + parasolParasolCommand + '"') else ""} \
      ~{if defined(defaultDefaultMemory) then ("--defaultMemory " +  '"' + defaultDefaultMemory + '"') else ""} \
      ~{if defined(defaultDefaultCpu) then ("--defaultCpu " +  '"' + defaultDefaultCpu + '"') else ""} \
      ~{if defined(maxMaxCpus) then ("--maxCpus " +  '"' + maxMaxCpus + '"') else ""} \
      ~{if defined(maxMaxMemory) then ("--maxMemory " +  '"' + maxMaxMemory + '"') else ""} \
      ~{if defined(retryRetryCount) then ("--retryCount " +  '"' + retryRetryCount + '"') else ""} \
      ~{if defined(maxMaxJobDuration) then ("--maxJobDuration " +  '"' + maxMaxJobDuration + '"') else ""} \
      ~{if defined(rescueRescueJobsFrequency) then ("--rescueJobsFrequency " +  '"' + rescueRescueJobsFrequency + '"') else ""} \
      ~{if defined(bigBigBatchSystem) then ("--bigBatchSystem " +  '"' + bigBigBatchSystem + '"') else ""} \
      ~{if defined(bigBigMemoryThreshold) then ("--bigMemoryThreshold " +  '"' + bigBigMemoryThreshold + '"') else ""} \
      ~{if defined(bigBigCpuThreshold) then ("--bigCpuThreshold " +  '"' + bigBigCpuThreshold + '"') else ""} \
      ~{if defined(bigBigMaxCpus) then ("--bigMaxCpus " +  '"' + bigBigMaxCpus + '"') else ""} \
      ~{if defined(bigBigMaxMemory) then ("--bigMaxMemory " +  '"' + bigBigMaxMemory + '"') else ""} \
      ~{if defined(jobJobTime) then ("--jobTime " +  '"' + jobJobTime + '"') else ""} \
      ~{if defined(maxMaxLogFileSize) then ("--maxLogFileSize " +  '"' + maxMaxLogFileSize + '"') else ""} \
      ~{if defined(commandCommand) then ("--command " +  '"' + commandCommand + '"') else ""} \
      ~{outputOutputDirectory}
  >>>
}