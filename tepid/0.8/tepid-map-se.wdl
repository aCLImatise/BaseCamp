version 1.0

task TepidMapSe {
  input {
    Boolean xX
    Boolean yY
    Boolean pP
    Boolean nN
    Boolean qQ
    Boolean rR
    Boolean zZ
  }
  command <<<
    tepid-map-se \
      ~{true="-x" false="" xX} \
      ~{true="-y" false="" yY} \
      ~{true="-p" false="" pP} \
      ~{true="-n" false="" nN} \
      ~{true="-q" false="" qQ} \
      ~{true="-r" false="" rR} \
      ~{true="-z" false="" zZ}
  >>>
}