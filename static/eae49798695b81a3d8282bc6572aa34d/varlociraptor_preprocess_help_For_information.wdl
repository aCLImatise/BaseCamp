version 1.0

task VarlociraptorPreprocessHelpForInformation {
  input {
    String? moreMore
    String? informationInformation
    String? tryTry
  }
  command <<<
    varlociraptor preprocess help For information \
      ~{moreMore} \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}