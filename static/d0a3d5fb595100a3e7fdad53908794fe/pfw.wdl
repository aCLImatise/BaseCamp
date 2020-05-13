version 1.0

task Pfw {
  input {
    Boolean mM
    Boolean nN
    Boolean xX
    Boolean rR
    Boolean wW
  }
  command <<<
    pfw \
      ~{true="-m" false="" mM} \
      ~{true="-N" false="" nN} \
      ~{true="-X" false="" xX} \
      ~{true="-R" false="" rR} \
      ~{true="-W" false="" wW}
  >>>
}