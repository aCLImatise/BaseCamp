version 1.0

task TripailleJobGetLogsSTDOUT {
  input {
    String? optionsOptions
    String? stdoutStdout
    String? stderrStderr
  }
  command <<<
    tripaille job get_logs STDOUT \
      ~{optionsOptions} \
      ~{stdoutStdout} \
      ~{stderrStderr}
  >>>
}