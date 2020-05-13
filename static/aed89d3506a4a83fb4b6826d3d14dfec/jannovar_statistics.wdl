version 1.0

task JannovarStatistics {
  input {
    String iI
    String oO
    String dD
    Boolean reportReportNoProgress
    Boolean vV
    Boolean vvVv
    String httpHttpProxy
    String httpsHttpsProxy
    String ftpFtpProxy
    String? janJanNovarCli
    String? statisticsStatistics
  }
  command <<<
    jannovar statistics \
      ~{janJanNovarCli} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{true="--report-no-progress" false="" reportReportNoProgress} \
      ~{true="-v" false="" vV} \
      ~{true="-vv" false="" vvVv} \
      ~{if defined(httpHttpProxy) then ("--http-proxy " +  '"' + httpHttpProxy + '"') else ""} \
      ~{if defined(httpsHttpsProxy) then ("--https-proxy " +  '"' + httpsHttpsProxy + '"') else ""} \
      ~{if defined(ftpFtpProxy) then ("--ftp-proxy " +  '"' + ftpFtpProxy + '"') else ""} \
      ~{statisticsStatistics}
  >>>
}