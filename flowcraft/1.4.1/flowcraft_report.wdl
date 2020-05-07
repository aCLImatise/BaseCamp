version 1.0

task FlowcraftReport {
  input {
    String iI
    String urlUrl
    String traceTraceFile
    String logLogFile
    Boolean watchWatch
  }
  command <<<
    flowcraft report \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(urlUrl) then ("--url " +  '"' + urlUrl + '"') else ""} \
      ~{if defined(traceTraceFile) then ("--trace-file " +  '"' + traceTraceFile + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""} \
      ~{true="--watch" false="" watchWatch}
  >>>
}