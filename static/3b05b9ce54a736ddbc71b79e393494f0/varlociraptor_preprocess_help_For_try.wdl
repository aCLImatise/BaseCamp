version 1.0

task VarlociraptorPreprocessHelpForTry {
  input {
    String? moreMore
    String? informationInformation
    String? tryTry
  }
  command <<<
    varlociraptor preprocess help For try \
      ~{moreMore} \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}