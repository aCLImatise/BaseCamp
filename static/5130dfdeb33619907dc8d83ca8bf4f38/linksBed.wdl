version 1.0

task LinksBed {
  input {
    Boolean baseBase
    Boolean orgOrg
    Boolean dbDb
  }
  command <<<
    linksBed \
      ~{true="-base" false="" baseBase} \
      ~{true="-org" false="" orgOrg} \
      ~{true="-db" false="" dbDb}
  >>>
}