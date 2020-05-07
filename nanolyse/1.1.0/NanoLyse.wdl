version 1.0

task NanoLyse {
  input {
    Boolean vV
    String rR
    String logLogFile
  }
  command <<<
    NanoLyse \
      ~{true="-v" false="" vV} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""}
  >>>
}