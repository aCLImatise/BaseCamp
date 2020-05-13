version 1.0

task RbtCollapseReadsToFragmentsHelpMore {
  input {
    String? forFor
    String? moreMore
    String? informationInformation
    String? tryTry
  }
  command <<<
    rbt collapse-reads-to-fragments help more \
      ~{forFor} \
      ~{moreMore} \
      ~{informationInformation} \
      ~{tryTry}
  >>>
}