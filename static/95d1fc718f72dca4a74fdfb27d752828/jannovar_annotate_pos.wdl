version 1.0

task JannovarAnnotatePos {
  input {
    String databaseDatabase
    String genomicGenomicChange
    Boolean reportReportNoProgress
    Boolean verboseVerbose
    Boolean veryVeryVerbose
    String httpHttpProxy
    String httpsHttpsProxy
    String ftpFtpProxy
  }
  command <<<
    jannovar annotate-pos \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(genomicGenomicChange) then ("--genomic-change " +  '"' + genomicGenomicChange + '"') else ""} \
      ~{true="--report-no-progress" false="" reportReportNoProgress} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--very-verbose" false="" veryVeryVerbose} \
      ~{if defined(httpHttpProxy) then ("--http-proxy " +  '"' + httpHttpProxy + '"') else ""} \
      ~{if defined(httpsHttpsProxy) then ("--https-proxy " +  '"' + httpsHttpsProxy + '"') else ""} \
      ~{if defined(ftpFtpProxy) then ("--ftp-proxy " +  '"' + ftpFtpProxy + '"') else ""}
  >>>
}