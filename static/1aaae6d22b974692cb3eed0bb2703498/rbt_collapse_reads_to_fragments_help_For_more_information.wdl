version 1.0

task RbtCollapseReadsToFragmentsHelpForMoreInformation {
  input {
    String? tryTry
  }
  command <<<
    rbt collapse-reads-to-fragments help For more information \
      ~{tryTry}
  >>>
}