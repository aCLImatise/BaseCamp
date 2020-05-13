version 1.0

task JannovarDownload {
  input {
    String databaseDatabase
    String dataDataSourceList
    String downloadDownloadDir
    Array[String]+ geneGeneIds
    String outputOutputFile
    Boolean reportReportNoProgress
    Boolean verboseVerbose
    Boolean veryVeryVerbose
    String httpHttpProxy
    String httpsHttpsProxy
    String ftpFtpProxy
  }
  command <<<
    jannovar download \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(dataDataSourceList) then ("--data-source-list " +  '"' + dataDataSourceList + '"') else ""} \
      ~{if defined(downloadDownloadDir) then ("--download-dir " +  '"' + downloadDownloadDir + '"') else ""} \
      ~{if defined(geneGeneIds) then ("--gene-ids " +  '"' + geneGeneIds + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{true="--report-no-progress" false="" reportReportNoProgress} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--very-verbose" false="" veryVeryVerbose} \
      ~{if defined(httpHttpProxy) then ("--http-proxy " +  '"' + httpHttpProxy + '"') else ""} \
      ~{if defined(httpsHttpsProxy) then ("--https-proxy " +  '"' + httpsHttpsProxy + '"') else ""} \
      ~{if defined(ftpFtpProxy) then ("--ftp-proxy " +  '"' + ftpFtpProxy + '"') else ""}
  >>>
}