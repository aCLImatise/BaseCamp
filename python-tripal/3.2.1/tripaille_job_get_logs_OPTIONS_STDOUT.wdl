version 1.0

task TripailleJobGetLogsOPTIONSSTDOUT {
  input {
    String? stderrStderr
  }
  command <<<
    tripaille job get_logs OPTIONS STDOUT \
      ~{stderrStderr}
  >>>
}