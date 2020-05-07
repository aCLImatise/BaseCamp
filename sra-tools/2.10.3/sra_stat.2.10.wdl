version 1.0

task SraStat.2.10.3 {
  input {
    Boolean xmlXml
    String startStart
    String stopStop
    Boolean metaMeta
    Boolean quickQuick
    Boolean memberMemberStats
    Boolean archiveArchiveInfo
    Boolean statisticsStatistics
    Boolean alignmentAlignment
    Boolean showShowProgress
    File ngcNgc
    String xmlXmlLog
    String logLogLevel
    Boolean verboseVerbose
    Boolean quietQuiet
    File optionOptionFile
    String? tableTable
  }
  command <<<
    sra-stat.2.10.3 \
      ~{tableTable} \
      ~{true="--xml" false="" xmlXml} \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(stopStop) then ("--stop " +  '"' + stopStop + '"') else ""} \
      ~{true="--meta" false="" metaMeta} \
      ~{true="--quick" false="" quickQuick} \
      ~{true="--member-stats" false="" memberMemberStats} \
      ~{true="--archive-info" false="" archiveArchiveInfo} \
      ~{true="--statistics" false="" statisticsStatistics} \
      ~{true="--alignment" false="" alignmentAlignment} \
      ~{true="--show_progress" false="" showShowProgress} \
      ~{if defined(ngcNgc) then ("--ngc " +  '"' + ngcNgc + '"') else ""} \
      ~{if defined(xmlXmlLog) then ("--xml-log " +  '"' + xmlXmlLog + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(optionOptionFile) then ("--option-file " +  '"' + optionOptionFile + '"') else ""}
  >>>
}