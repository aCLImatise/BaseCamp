version 1.0

task RbtCollapseReadsToFragmentsHelpForMoreTry {
  input {
    String? informationInformation
    String? tryTry
  }
  command <<<
    rbt collapse-reads-to-fragments help For more try \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}