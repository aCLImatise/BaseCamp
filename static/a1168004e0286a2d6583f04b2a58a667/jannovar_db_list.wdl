version 1.0

task JannovarDbList {
  input {
    String dataDataSourceList
    Boolean reportReportNoProgress
    Boolean verboseVerbose
    Boolean veryVeryVerbose
    String httpHttpProxy
    String httpsHttpsProxy
    String ftpFtpProxy
    String? janJanNovarCli
    String? dbDbList
  }
  command <<<
    jannovar db-list \
      ~{janJanNovarCli} \
      ~{if defined(dataDataSourceList) then ("--data-source-list " +  '"' + dataDataSourceList + '"') else ""} \
      ~{true="--report-no-progress" false="" reportReportNoProgress} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--very-verbose" false="" veryVeryVerbose} \
      ~{if defined(httpHttpProxy) then ("--http-proxy " +  '"' + httpHttpProxy + '"') else ""} \
      ~{if defined(httpsHttpsProxy) then ("--https-proxy " +  '"' + httpsHttpsProxy + '"') else ""} \
      ~{if defined(ftpFtpProxy) then ("--ftp-proxy " +  '"' + ftpFtpProxy + '"') else ""} \
      ~{dbDbList}
  >>>
}