version 1.0

task SketchyOnlineMonitor {
  input {
    Float? interval
    Boolean? terminate
    Float? early
    File? prefix
    File? log
  }
  command <<<
    sketchy online monitor \
      ~{if defined(interval) then ("--interval " +  '"' + interval + '"') else ""} \
      ~{if (terminate) then "--terminate" else ""} \
      ~{if defined(early) then ("--early " +  '"' + early + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (log) then "--log" else ""}
  >>>
  parameter_meta {
    interval: "Interval in seconds to check on resource usage"
    terminate: "Terminate monitoring if no more processes are active"
    early: "Terminate early after this amount of seconds"
    prefix: "Prefix for data output file when completed or stopped"
    log: "Output to log file instead of terminal"
  }
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
    File out_log = "${in_log}"
  }
}