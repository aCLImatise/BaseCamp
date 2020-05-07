version 1.0

task TripailleJobGetLogsOPTIONSSTDERR {
  input {
    String? stdoutStdout
    String? stderrStderr
  }
  command <<<
    tripaille job get_logs OPTIONS STDERR \
      ~{stdoutStdout} \
      ~{stderrStderr}
  >>>
}