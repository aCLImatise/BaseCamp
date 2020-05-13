version 1.0

task Hardklor {
  input {
    String? configConfigFile
  }
  command <<<
    hardklor \
      ~{configConfigFile}
  >>>
}