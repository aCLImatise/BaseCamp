version 1.0

task AnviDisplayContigsStats {
  input {
    Boolean reportReportAsText
    File outputOutputFile
    String ipIpAddress
    Int portPortNumber
    File browserBrowserPath
    Boolean serverServerOnly
    Boolean passwordPasswordProtected
  }
  command <<<
    anvi-display-contigs-stats \
      ~{true="--report-as-text" false="" reportReportAsText} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(ipIpAddress) then ("--ip-address " +  '"' + ipIpAddress + '"') else ""} \
      ~{if defined(portPortNumber) then ("--port-number " +  '"' + portPortNumber + '"') else ""} \
      ~{if defined(browserBrowserPath) then ("--browser-path " +  '"' + browserBrowserPath + '"') else ""} \
      ~{true="--server-only" false="" serverServerOnly} \
      ~{true="--password-protected" false="" passwordPasswordProtected}
  >>>
}