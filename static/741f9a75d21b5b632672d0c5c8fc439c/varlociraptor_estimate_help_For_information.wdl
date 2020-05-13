version 1.0

task VarlociraptorEstimateHelpForInformation {
  input {
    String? moreMore
    String? informationInformation
    String? tryTry
  }
  command <<<
    varlociraptor estimate help For information \
      ~{moreMore} \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}