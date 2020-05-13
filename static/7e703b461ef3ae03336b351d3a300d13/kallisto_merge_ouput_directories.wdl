version 1.0

task KallistoMergeOuputDirectories {
  input {
    String? argumentsArguments
    String? ouputOuputDirectories
  }
  command <<<
    kallisto merge ouput-directories \
      ~{argumentsArguments} \
      ~{ouputOuputDirectories}
  >>>
}