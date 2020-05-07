version 1.0

task TangoAssign {
  input {
    String formatFormat
    String taxidTaxidMap
    String taxTaxDir
    String sqliteSqliteDb
    String blobBlobOut
    String taxidTaxidOut
    String modeMode
    Array[String]+ assignAssignRanks
    Array[String]+ reportReportRanks
    Array[String]+ rankRankThresholds
    String voteVoteThreshold
    String topTop
    String evalueEvalue
    String cpusCpus
    String chunksizeChunksize
    String? diamondDiamondResults
    String? outfileOutfile
  }
  command <<<
    tango assign \
      ~{diamondDiamondResults} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(taxidTaxidMap) then ("--taxidmap " +  '"' + taxidTaxidMap + '"') else ""} \
      ~{if defined(taxTaxDir) then ("--taxdir " +  '"' + taxTaxDir + '"') else ""} \
      ~{if defined(sqliteSqliteDb) then ("--sqlitedb " +  '"' + sqliteSqliteDb + '"') else ""} \
      ~{if defined(blobBlobOut) then ("--blobout " +  '"' + blobBlobOut + '"') else ""} \
      ~{if defined(taxidTaxidOut) then ("--taxidout " +  '"' + taxidTaxidOut + '"') else ""} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(assignAssignRanks) then ("--assignranks " +  '"' + assignAssignRanks + '"') else ""} \
      ~{if defined(reportReportRanks) then ("--reportranks " +  '"' + reportReportRanks + '"') else ""} \
      ~{if defined(rankRankThresholds) then ("--rank_thresholds " +  '"' + rankRankThresholds + '"') else ""} \
      ~{if defined(voteVoteThreshold) then ("--vote_threshold " +  '"' + voteVoteThreshold + '"') else ""} \
      ~{if defined(topTop) then ("--top " +  '"' + topTop + '"') else ""} \
      ~{if defined(evalueEvalue) then ("--evalue " +  '"' + evalueEvalue + '"') else ""} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{if defined(chunksizeChunksize) then ("--chunksize " +  '"' + chunksizeChunksize + '"') else ""} \
      ~{outfileOutfile}
  >>>
}