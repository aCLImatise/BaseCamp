version 1.0

task Srprism {
  input {
    Int traceTraceLevel
    File logLogFile
    String? cmdCmd
  }
  command <<<
    srprism \
      ~{cmdCmd} \
      ~{if defined(traceTraceLevel) then ("--trace-level " +  '"' + traceTraceLevel + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""}
  >>>
}