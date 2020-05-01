version 1.0

task Multinomial {
  input {
    Boolean pP
    Boolean cC
    Boolean fF
    Boolean lL
    String? parametersParametersTab
    String? countsCountsTab
    String? outputOutputTab
  }
  command <<<
    multinomial \
      ~{parametersParametersTab} \
      ~{true="-p" false="" pP} \
      ~{true="-c" false="" cC} \
      ~{true="-f" false="" fF} \
      ~{true="-l" false="" lL} \
      ~{countsCountsTab} \
      ~{outputOutputTab}
  >>>
}