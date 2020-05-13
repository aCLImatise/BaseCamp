version 1.0

task Sstofa {
  input {
    String? secSecStructFile
  }
  command <<<
    sstofa \
      ~{secSecStructFile}
  >>>
}