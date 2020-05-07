version 1.0

task Logcombiner {
  input {
    File logLog
    Int nN
    String? logLogCombiner
  }
  command <<<
    logcombiner \
      ~{logLogCombiner} \
      ~{if defined(logLog) then ("-log " +  '"' + logLog + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""}
  >>>
}