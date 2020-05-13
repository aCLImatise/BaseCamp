version 1.0

task Timeout {
  input {
    Boolean preservePreserveStatus
    Boolean foregroundForeground
    String killKillAfter
    String signalSignal
  }
  command <<<
    timeout \
      ~{true="--preserve-status" false="" preservePreserveStatus} \
      ~{true="--foreground" false="" foregroundForeground} \
      ~{if defined(killKillAfter) then ("--kill-after " +  '"' + killKillAfter + '"') else ""} \
      ~{if defined(signalSignal) then ("--signal " +  '"' + signalSignal + '"') else ""}
  >>>
}