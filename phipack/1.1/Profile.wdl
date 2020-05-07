version 1.0

task Profile {
  input {
    Boolean fF
    Boolean sS
    Boolean rR
    Boolean tT
    Boolean wW
    Boolean vV
    Boolean nN
    Boolean mM
  }
  command <<<
    Profile \
      ~{true="-f" false="" fF} \
      ~{true="-s" false="" sS} \
      ~{true="-r" false="" rR} \
      ~{true="-t" false="" tT} \
      ~{true="-w" false="" wW} \
      ~{true="-v" false="" vV} \
      ~{true="-n" false="" nN} \
      ~{true="-m" false="" mM}
  >>>
}