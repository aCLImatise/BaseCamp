version 1.0

task FermiChkbwt {
  input {
    Boolean mM
    Boolean rR
    Boolean pP
    String? idxIdxBaseBwt
  }
  command <<<
    fermi chkbwt \
      ~{idxIdxBaseBwt} \
      ~{true="-M" false="" mM} \
      ~{true="-r" false="" rR} \
      ~{true="-p" false="" pP}
  >>>
}