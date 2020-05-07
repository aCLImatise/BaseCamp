version 1.0

task Mhpl8r {
  input {
    String logLogFile
    Boolean teeTee
    String? subSubCmd
  }
  command <<<
    mhpl8r \
      ~{subSubCmd} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{true="--tee" false="" teeTee}
  >>>
}