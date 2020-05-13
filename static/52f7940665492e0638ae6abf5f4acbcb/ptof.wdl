version 1.0

task Ptof {
  input {
    Boolean lL
    Boolean rR
    Boolean bB
    Boolean fF
    Boolean iI
    Boolean xX
    Boolean yY
    Boolean zZ
  }
  command <<<
    ptof \
      ~{true="-l" false="" lL} \
      ~{true="-r" false="" rR} \
      ~{true="-B" false="" bB} \
      ~{true="-F" false="" fF} \
      ~{true="-I" false="" iI} \
      ~{true="-X" false="" xX} \
      ~{true="-Y" false="" yY} \
      ~{true="-Z" false="" zZ}
  >>>
}