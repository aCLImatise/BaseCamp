version 1.0

task TripailleJobGetLogsSTDERR {
  input {
    String? optionsOptions
    String? stdoutStdout
    String? stderrStderr
  }
  command <<<
    tripaille job get_logs STDERR \
      ~{optionsOptions} \
      ~{stdoutStdout} \
      ~{stderrStderr}
  >>>
}