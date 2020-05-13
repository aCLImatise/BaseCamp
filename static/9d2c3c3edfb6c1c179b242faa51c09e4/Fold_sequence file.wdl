version 1.0

task FoldSequence file {
  input {
    String? ctCtFile
  }
  command <<<
    Fold sequence file \
      ~{ctCtFile}
  >>>
}