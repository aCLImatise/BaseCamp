version 1.0

task Mcall {
  input {
    Boolean mM
    String sampleSampleName
    String outputOutputDir
    String webWebOutputDir
    Boolean gG
    Boolean rR
    String cytosineCytosineMinScore
    String nextbaseNextbaseMinScore
    String qualityQualityScoreBase
    String trimwgbsendrepairpe2seqTrimwgbsendrepairpe2seq
    String trimwgbsendrepairpe1seqTrimwgbsendrepairpe1seq
    String processProcessPeOverlapSeq
    String trimTrimRrbSendRepairSeq
    String skipSkipRandomChrom
    Boolean fF
    Boolean fF
    String minMinFragSize
    String minMinMmFragSize
    String reportReportCpx
    String reportReportChx
    Boolean aA
    String statsStatsOnly
    String keepKeepTemp
    Boolean pP
  }
  command <<<
    mcall \
      ~{true="-m" false="" mM} \
      ~{if defined(sampleSampleName) then ("--sampleName " +  '"' + sampleSampleName + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--outputDir " +  '"' + outputOutputDir + '"') else ""} \
      ~{if defined(webWebOutputDir) then ("--webOutputDir " +  '"' + webWebOutputDir + '"') else ""} \
      ~{true="-g" false="" gG} \
      ~{true="-r" false="" rR} \
      ~{if defined(cytosineCytosineMinScore) then ("--cytosineMinScore " +  '"' + cytosineCytosineMinScore + '"') else ""} \
      ~{if defined(nextbaseNextbaseMinScore) then ("--nextBaseMinScore " +  '"' + nextbaseNextbaseMinScore + '"') else ""} \
      ~{if defined(qualityQualityScoreBase) then ("--qualityScoreBase " +  '"' + qualityQualityScoreBase + '"') else ""} \
      ~{if defined(trimwgbsendrepairpe2seqTrimwgbsendrepairpe2seq) then ("--trimWGBSEndRepairPE2Seq " +  '"' + trimwgbsendrepairpe2seqTrimwgbsendrepairpe2seq + '"') else ""} \
      ~{if defined(trimwgbsendrepairpe1seqTrimwgbsendrepairpe1seq) then ("--trimWGBSEndRepairPE1Seq " +  '"' + trimwgbsendrepairpe1seqTrimwgbsendrepairpe1seq + '"') else ""} \
      ~{if defined(processProcessPeOverlapSeq) then ("--processPEOverlapSeq " +  '"' + processProcessPeOverlapSeq + '"') else ""} \
      ~{if defined(trimTrimRrbSendRepairSeq) then ("--trimRRBSEndRepairSeq " +  '"' + trimTrimRrbSendRepairSeq + '"') else ""} \
      ~{if defined(skipSkipRandomChrom) then ("--skipRandomChrom " +  '"' + skipSkipRandomChrom + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-F" false="" fF} \
      ~{if defined(minMinFragSize) then ("--minFragSize " +  '"' + minMinFragSize + '"') else ""} \
      ~{if defined(minMinMmFragSize) then ("--minMMFragSize " +  '"' + minMinMmFragSize + '"') else ""} \
      ~{if defined(reportReportCpx) then ("--reportCpX " +  '"' + reportReportCpx + '"') else ""} \
      ~{if defined(reportReportChx) then ("--reportCHX " +  '"' + reportReportChx + '"') else ""} \
      ~{true="-a" false="" aA} \
      ~{if defined(statsStatsOnly) then ("--statsOnly " +  '"' + statsStatsOnly + '"') else ""} \
      ~{if defined(keepKeepTemp) then ("--keepTemp " +  '"' + keepKeepTemp + '"') else ""} \
      ~{true="-p" false="" pP}
  >>>
}