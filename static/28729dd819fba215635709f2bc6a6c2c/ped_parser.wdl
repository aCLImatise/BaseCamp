version 1.0

task PedParser {
  input {
    File logLogFile
    Boolean loglevelLoglevel
  }
  command <<<
    ped_parser \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{true="--loglevel" false="" loglevelLoglevel}
  >>>
}