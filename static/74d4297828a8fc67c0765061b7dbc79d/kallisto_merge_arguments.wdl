version 1.0

task KallistoMergeArguments {
  input {
    String? ouputOuputDirectories
  }
  command <<<
    kallisto merge arguments \
      ~{ouputOuputDirectories}
  >>>
}