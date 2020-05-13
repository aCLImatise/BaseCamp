version 1.0

task Sdsort {
  input {
    Boolean nN
    Boolean rR
    Boolean fF
    Boolean sS
    Boolean idId
  }
  command <<<
    sdsort \
      ~{true="-n" false="" nN} \
      ~{true="-r" false="" rR} \
      ~{true="-f" false="" fF} \
      ~{true="-s" false="" sS} \
      ~{true="-id" false="" idId}
  >>>
}