version 1.0

task VarlociraptorPreprocessHelpForMoreTry {
  input {
    String? informationInformation
    String? tryTry
  }
  command <<<
    varlociraptor preprocess help For more try \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}