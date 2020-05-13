version 1.0

task Laagc {
  input {
    Boolean rngRngSeed
    Boolean generateGenerateBamIndex
    Boolean ignoreIgnoreBamIndex
    Boolean numNumThreads
    Boolean modelModelPath
    Boolean modelModelSpec
    Boolean barcodesBarcodes
    Boolean minMinBarcodeScore
    Boolean fullFullLength
    Boolean doDoBc
    Boolean ignoreIgnoreBc
    Boolean minlengthMinlength
    Boolean maxlengthMaxlength
    Boolean minMinReadScore
    Boolean minsMinsNr
    Boolean minMinGuideScore
    Boolean minMinGuideSpan
    Boolean whitelistWhitelist
    Boolean maxMaxReads
    Boolean maxMaxClusteringReads
    Boolean fullFullLengthPreference
    Boolean fullFullLengthClustering
    Boolean clusterClusterInflation
    Boolean clusterClusterLoopWeight
    Boolean skipSkipRate
    Boolean minMinClusterSize
    Boolean doDoCluster
    Boolean clusteringClustering
    Boolean noNoClustering
    Boolean ignoreIgnoreEnds
    Boolean maxMaxPhasingReads
    Boolean minMinQScore
    Boolean minMinPrevalence
    Boolean minMinSplitReads
    Boolean minMinSplitFraction
    Boolean minMinSplitScore
    Boolean minMinZscore
    Boolean phasingPhasing
    Boolean noNoPhasing
    Boolean takenTaken
    Boolean trimTrimEnds
    Boolean minMinPredictedAccuracy
    Boolean chimeraChimeraScoreThreshold
    Boolean chimeraChimeraFilter
    Boolean noNoChimeraFilter
    Boolean logLogFile
    Boolean resultResultFile
    Boolean junkJunkFile
    Boolean reportReportFile
    Boolean inputInputReportFile
    Boolean locusLocusReportFile
    Boolean whitelistWhitelistReportFile
    Boolean subSubReadsReportPrefix
    Boolean verboseVerbose
    Boolean logLogLevel
    Boolean emitEmitToolContract
    Boolean resolvedResolvedToolContract
    String? guideGuide
    String? inputInput
  }
  command <<<
    laagc \
      ~{guideGuide} \
      ~{true="--rngSeed" false="" rngRngSeed} \
      ~{true="--generateBamIndex" false="" generateGenerateBamIndex} \
      ~{true="--ignoreBamIndex" false="" ignoreIgnoreBamIndex} \
      ~{true="--numThreads" false="" numNumThreads} \
      ~{true="--modelPath" false="" modelModelPath} \
      ~{true="--modelSpec" false="" modelModelSpec} \
      ~{true="--barcodes" false="" barcodesBarcodes} \
      ~{true="--minBarcodeScore" false="" minMinBarcodeScore} \
      ~{true="--fullLength" false="" fullFullLength} \
      ~{true="--doBc" false="" doDoBc} \
      ~{true="--ignoreBc" false="" ignoreIgnoreBc} \
      ~{true="--minLength" false="" minlengthMinlength} \
      ~{true="--maxLength" false="" maxlengthMaxlength} \
      ~{true="--minReadScore" false="" minMinReadScore} \
      ~{true="--minSnr" false="" minsMinsNr} \
      ~{true="--minGuideScore" false="" minMinGuideScore} \
      ~{true="--minGuideSpan" false="" minMinGuideSpan} \
      ~{true="--whitelist" false="" whitelistWhitelist} \
      ~{true="--maxReads" false="" maxMaxReads} \
      ~{true="--maxClusteringReads" false="" maxMaxClusteringReads} \
      ~{true="--fullLengthPreference" false="" fullFullLengthPreference} \
      ~{true="--fullLengthClustering" false="" fullFullLengthClustering} \
      ~{true="--clusterInflation" false="" clusterClusterInflation} \
      ~{true="--clusterLoopWeight" false="" clusterClusterLoopWeight} \
      ~{true="--skipRate" false="" skipSkipRate} \
      ~{true="--minClusterSize" false="" minMinClusterSize} \
      ~{true="--doCluster" false="" doDoCluster} \
      ~{true="--Clustering" false="" clusteringClustering} \
      ~{true="--noClustering" false="" noNoClustering} \
      ~{true="--ignoreEnds" false="" ignoreIgnoreEnds} \
      ~{true="--maxPhasingReads" false="" maxMaxPhasingReads} \
      ~{true="--minQScore" false="" minMinQScore} \
      ~{true="--minPrevalence" false="" minMinPrevalence} \
      ~{true="--minSplitReads" false="" minMinSplitReads} \
      ~{true="--minSplitFraction" false="" minMinSplitFraction} \
      ~{true="--minSplitScore" false="" minMinSplitScore} \
      ~{true="--minZScore" false="" minMinZscore} \
      ~{true="--Phasing" false="" phasingPhasing} \
      ~{true="--noPhasing" false="" noNoPhasing} \
      ~{true="--takeN" false="" takenTaken} \
      ~{true="--trimEnds" false="" trimTrimEnds} \
      ~{true="--minPredictedAccuracy" false="" minMinPredictedAccuracy} \
      ~{true="--chimeraScoreThreshold" false="" chimeraChimeraScoreThreshold} \
      ~{true="--ChimeraFilter" false="" chimeraChimeraFilter} \
      ~{true="--noChimeraFilter" false="" noNoChimeraFilter} \
      ~{true="--logFile" false="" logLogFile} \
      ~{true="--resultFile" false="" resultResultFile} \
      ~{true="--junkFile" false="" junkJunkFile} \
      ~{true="--reportFile" false="" reportReportFile} \
      ~{true="--inputReportFile" false="" inputInputReportFile} \
      ~{true="--locusReportFile" false="" locusLocusReportFile} \
      ~{true="--whitelistReportFile" false="" whitelistWhitelistReportFile} \
      ~{true="--subreadsReportPrefix" false="" subSubReadsReportPrefix} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--log-level" false="" logLogLevel} \
      ~{true="--emit-tool-contract" false="" emitEmitToolContract} \
      ~{true="--resolved-tool-contract" false="" resolvedResolvedToolContract} \
      ~{inputInput}
  >>>
}