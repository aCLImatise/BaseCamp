version 1.0

task Bseqc2 {
  input {
    Boolean iI
    Boolean oO
    Boolean rR
    Boolean lL
    Boolean nN
    Boolean sS
  }
  command <<<
    bseqc2 \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-r" false="" rR} \
      ~{true="-l" false="" lL} \
      ~{true="-n" false="" nN} \
      ~{true="-s" false="" sS}
  >>>
}