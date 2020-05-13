version 1.0

task SvtoolsVcfsort {
  input {
    String? vcfVcfSortInput
    String? stdinStdin
    String? outputOutput
    String? stdoutStdout
  }
  command <<<
    svtools vcfsort \
      ~{vcfVcfSortInput} \
      ~{stdinStdin} \
      ~{outputOutput} \
      ~{stdoutStdout}
  >>>
}