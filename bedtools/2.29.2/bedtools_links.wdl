version 1.0

task BedtoolsLinks {
  input {
    Boolean baseBase
    Boolean orgOrg
    Boolean dbDb
  }
  command <<<
    bedtools links \
      ~{true="-base" false="" baseBase} \
      ~{true="-org" false="" orgOrg} \
      ~{true="-db" false="" dbDb}
  >>>
}