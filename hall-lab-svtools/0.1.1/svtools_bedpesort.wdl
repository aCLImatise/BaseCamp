version 1.0

task SvtoolsBedpesort {
  input {
    String? bedBedPeSortInput
    String? stdinStdin
    String? outputOutput
    String? stdoutStdout
  }
  command <<<
    svtools bedpesort \
      ~{bedBedPeSortInput} \
      ~{stdinStdin} \
      ~{outputOutput} \
      ~{stdoutStdout}
  >>>
}