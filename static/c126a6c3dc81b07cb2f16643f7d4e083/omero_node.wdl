version 1.0

task OmeroNode {
  input {
    Boolean? foreground
    String start
    String stop
    String status
    String restart
  }
  command <<<
    omero node \
      ~{start} \
      ~{stop} \
      ~{status} \
      ~{restart} \
      ~{true="--foreground" false="" foreground}
  >>>
  parameter_meta {
    foreground: "Start in foreground mode (no daemon/service)"
    start: "-- Start the node via icegridnode. With sync doesn't return until reachable."
    stop: "-- Stop the node via icegridadmin. With sync doesn't return until stopped."
    status: "-- Prints a status message. Return code is non-zero if there is a problem."
    restart: "-- Calls \"sync start\" then \"stop\" (\"sync stop\" if sync is specified)"
  }
}