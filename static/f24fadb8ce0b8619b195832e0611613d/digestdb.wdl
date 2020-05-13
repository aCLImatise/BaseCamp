version 1.0

task Digestdb {
  input {
    Boolean lL
    Boolean mM
    Boolean rR
    Boolean nN
    Boolean mM
    Boolean tT
  }
  command <<<
    digestdb \
      ~{true="-l" false="" lL} \
      ~{true="-m" false="" mM} \
      ~{true="-r" false="" rR} \
      ~{true="-n" false="" nN} \
      ~{true="-M" false="" mM} \
      ~{true="-t" false="" tT}
  >>>
}