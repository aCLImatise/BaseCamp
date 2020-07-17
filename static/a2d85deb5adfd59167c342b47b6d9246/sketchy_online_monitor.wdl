version 1.0

task SketchyOnlineMonitor {
  input {
    Float? interval
    Boolean? terminate
    Float? early
    String? prefix
    Boolean? log
  }
  command <<<
    sketchy online monitor \
      ~{if defined(interval) then ("--interval " +  '"' + interval + '"') else ""} \
      ~{true="--terminate" false="" terminate} \
      ~{if defined(early) then ("--early " +  '"' + early + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--log" false="" log}
  >>>
  parameter_meta {
    interval: "Interval in seconds to check on resource usage"
    terminate: "Terminate monitoring if no more processes are active"
    early: "Terminate early after this amount of seconds"
    prefix: "Prefix for data output file when completed or stopped"
    log: "Output to log file instead of terminal"
  }
}