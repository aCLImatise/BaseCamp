version 1.0

task PedParser {
  input {
    File? log_file
    Boolean? loglevel
    String family_file
    String or
  }
  command <<<
    ped_parser \
      ~{family_file} \
      ~{or} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{true="--loglevel" false="" loglevel}
  >>>
  parameter_meta {
    log_file: "Path to log file. If none logging is printed to stderr."
    loglevel: "[DEBUG|INFO|WARNING|ERROR|CRITICAL] Set the level of log output."
    family_file: ""
    or: ""
  }
}