version 1.0

task Tabix {
  input {
    Boolean hH
    Boolean lL
    Boolean fF
  }
  command <<<
    tabix \
      ~{true="-H" false="" hH} \
      ~{true="-l" false="" lL} \
      ~{true="-f" false="" fF}
  >>>
}