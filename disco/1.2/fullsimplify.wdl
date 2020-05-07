version 1.0

task Fullsimplify {
  input {
    Boolean fsFs
    Boolean fpFp
    Boolean fpiFpi
    Boolean crdCrd
    Boolean eE
    Boolean pP
    Boolean oO
    Boolean simpSimpTh
    Boolean ovlOvl
    Boolean logLog
  }
  command <<<
    fullsimplify \
      ~{true="-fs" false="" fsFs} \
      ~{true="-fp" false="" fpFp} \
      ~{true="-fpi" false="" fpiFpi} \
      ~{true="-crd" false="" crdCrd} \
      ~{true="-e" false="" eE} \
      ~{true="-p" false="" pP} \
      ~{true="-o" false="" oO} \
      ~{true="-simPth" false="" simpSimpTh} \
      ~{true="-ovl" false="" ovlOvl} \
      ~{true="-log" false="" logLog}
  >>>
}