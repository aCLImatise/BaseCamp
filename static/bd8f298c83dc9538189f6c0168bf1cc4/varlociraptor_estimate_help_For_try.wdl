version 1.0

task VarlociraptorEstimateHelpForTry {
  input {
    String? moreMore
    String? informationInformation
    String? tryTry
  }
  command <<<
    varlociraptor estimate help For try \
      ~{moreMore} \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}