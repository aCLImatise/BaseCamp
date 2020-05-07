version 1.0

task VarlociraptorPreprocessHelpForMoreInformation {
  input {
    String? tryTry
  }
  command <<<
    varlociraptor preprocess help For more information \
      ~{tryTry}
  >>>
}