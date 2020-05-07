version 1.0

task VarlociraptorEstimateHelpMore {
  input {
    String? forFor
    String? moreMore
    String? informationInformation
    String? tryTry
  }
  command <<<
    varlociraptor estimate help more \
      ~{forFor} \
      ~{moreMore} \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}