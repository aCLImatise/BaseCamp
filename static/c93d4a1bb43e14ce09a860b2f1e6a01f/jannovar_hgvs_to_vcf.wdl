version 1.0

task JannovarHgvsToVcf {
  input {
    String referenceReferenceFastA
    String databaseDatabase
    String inputInputTxt
    String outputOutputVcf
    Boolean reportReportNoProgress
    Boolean verboseVerbose
    Boolean veryVeryVerbose
    String httpHttpProxy
    String httpsHttpsProxy
    String ftpFtpProxy
  }
  command <<<
    jannovar hgvs-to-vcf \
      ~{if defined(referenceReferenceFastA) then ("--reference-fasta " +  '"' + referenceReferenceFastA + '"') else ""} \
      ~{if defined(databaseDatabase) then ("--database " +  '"' + databaseDatabase + '"') else ""} \
      ~{if defined(inputInputTxt) then ("--input-txt " +  '"' + inputInputTxt + '"') else ""} \
      ~{if defined(outputOutputVcf) then ("--output-vcf " +  '"' + outputOutputVcf + '"') else ""} \
      ~{true="--report-no-progress" false="" reportReportNoProgress} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--very-verbose" false="" veryVeryVerbose} \
      ~{if defined(httpHttpProxy) then ("--http-proxy " +  '"' + httpHttpProxy + '"') else ""} \
      ~{if defined(httpsHttpsProxy) then ("--https-proxy " +  '"' + httpsHttpsProxy + '"') else ""} \
      ~{if defined(ftpFtpProxy) then ("--ftp-proxy " +  '"' + ftpFtpProxy + '"') else ""}
  >>>
}