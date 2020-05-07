version 1.0

task StacksDistExtract {
  input {
    String? distDistFile
  }
  command <<<
    stacks-dist-extract \
      ~{distDistFile}
  >>>
}