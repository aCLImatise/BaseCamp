version 1.0

task VarlociraptorEstimateHelpForMoreTry {
  input {
    String? informationInformation
    String? tryTry
  }
  command <<<
    varlociraptor estimate help For more try \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}