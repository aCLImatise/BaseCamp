version 1.0

task BlastAlignP {
  input {
    Boolean sS
    Boolean mM
    Boolean nN
    String? mustMust
    String? haveHave
    String? blastBlastAlignP
  }
  command <<<
    BlastAlignP \
      ~{mustMust} \
      ~{true="-s" false="" sS} \
      ~{true="-m" false="" mM} \
      ~{true="-n" false="" nN} \
      ~{haveHave} \
      ~{blastBlastAlignP}
  >>>
}