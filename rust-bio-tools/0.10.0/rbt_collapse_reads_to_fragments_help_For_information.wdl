version 1.0

task RbtCollapseReadsToFragmentsHelpForInformation {
  input {
    String? moreMore
    String? informationInformation
    String? tryTry
  }
  command <<<
    rbt collapse-reads-to-fragments help For information \
      ~{moreMore} \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}