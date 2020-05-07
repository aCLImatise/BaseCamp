version 1.0

task RbtCollapseReadsToFragmentsHelpForTry {
  input {
    String? moreMore
    String? informationInformation
    String? tryTry
  }
  command <<<
    rbt collapse-reads-to-fragments help For try \
      ~{moreMore} \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}