version 1.0

task JannovarRestServer {
  input {
    String hostHost
    String portPort
    String databaseDatabase
    Boolean reportReportNoProgress
    Boolean verboseVerbose
    Boolean veryVeryVerbose
    String httpHttpProxy
    String httpsHttpsProxy
    String ftpFtpProxy
  }
  command <<<
    jannovar rest-server \
      ~{if defined(hostHost) then ("--host " +  '"' + hostHost + '"') else ""} \
      ~{if defined(portPort) then ("--port " +  '"' + portPort + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{true="--report-no-progress" false="" reportReportNoProgress} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--very-verbose" false="" veryVeryVerbose} \
      ~{if defined(httpHttpProxy) then ("--http-proxy " +  '"' + httpHttpProxy + '"') else ""} \
      ~{if defined(httpsHttpsProxy) then ("--https-proxy " +  '"' + httpsHttpsProxy + '"') else ""} \
      ~{if defined(ftpFtpProxy) then ("--ftp-proxy " +  '"' + ftpFtpProxy + '"') else ""}
  >>>
}