version 1.0

task BlastAlign {
  input {
    Boolean mM
    Boolean rR
    Boolean xX
    Boolean nN
    Boolean sS
    String? mustMust
    String? haveHave
    String? blastBlastAlign
  }
  command <<<
    BlastAlign \
      ~{mustMust} \
      ~{true="-m" false="" mM} \
      ~{true="-r" false="" rR} \
      ~{true="-x" false="" xX} \
      ~{true="-n" false="" nN} \
      ~{true="-s" false="" sS} \
      ~{haveHave} \
      ~{blastBlastAlign}
  >>>
}