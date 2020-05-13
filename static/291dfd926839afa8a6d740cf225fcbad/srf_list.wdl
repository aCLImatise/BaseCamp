version 1.0

task SrfList {
  input {
    Boolean cC
    Boolean vV
    Boolean lL
    String? optionsOptions
  }
  command <<<
    srf_list \
      ~{optionsOptions} \
      ~{true="-c" false="" cC} \
      ~{true="-v" false="" vV} \
      ~{true="-l" false="" lL}
  >>>
}