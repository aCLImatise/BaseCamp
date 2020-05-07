version 1.0

task JannovarAnnotateCsv {
  input {
    String databaseDatabase
    String inputInput
    String chrChr
    String posPos
    String refRef
    String altAlt
    String typeType
    Boolean headerHeader
    Boolean reportReportNoProgress
    Boolean verboseVerbose
    Boolean veryVeryVerbose
    String httpHttpProxy
    String httpsHttpsProxy
    String ftpFtpProxy
  }
  command <<<
    jannovar annotate-csv \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(chrChr) then ("--chr " +  '"' + chrChr + '"') else ""} \
      ~{if defined(posPos) then ("--pos " +  '"' + posPos + '"') else ""} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(altAlt) then ("--alt " +  '"' + altAlt + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{true="--header" false="" headerHeader} \
      ~{true="--report-no-progress" false="" reportReportNoProgress} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--very-verbose" false="" veryVeryVerbose} \
      ~{if defined(httpHttpProxy) then ("--http-proxy " +  '"' + httpHttpProxy + '"') else ""} \
      ~{if defined(httpsHttpsProxy) then ("--https-proxy " +  '"' + httpsHttpsProxy + '"') else ""} \
      ~{if defined(ftpFtpProxy) then ("--ftp-proxy " +  '"' + ftpFtpProxy + '"') else ""}
  >>>
}