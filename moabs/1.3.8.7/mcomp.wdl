version 1.0

task Mcomp {
  input {
    String doDoDmcsCan
    String dodDodMrsCan
    String filterFilterCredibleDif
    String dmrDmrMethods
    String pfPfEtDmc
    String pfPfEtDmr
    String minMinNominalDif
    String pPSimDmc
    String psiPsiMdMr
    String mMIncredibleDif
    String toprankToprankByCdIf
    String toprankToprankByPsiM
    String mindMindMcsInDmr
    String maxMaxDistConsDmcs
    Boolean fF
  }
  command <<<
    mcomp \
      ~{if defined(doDoDmcsCan) then ("--doDmcScan " +  '"' + doDoDmcsCan + '"') else ""} \
      ~{if defined(dodDodMrsCan) then ("--doDmrScan " +  '"' + dodDodMrsCan + '"') else ""} \
      ~{if defined(filterFilterCredibleDif) then ("--filterCredibleDif " +  '"' + filterFilterCredibleDif + '"') else ""} \
      ~{if defined(dmrDmrMethods) then ("--dmrMethods " +  '"' + dmrDmrMethods + '"') else ""} \
      ~{if defined(pfPfEtDmc) then ("--pFetDmc " +  '"' + pfPfEtDmc + '"') else ""} \
      ~{if defined(pfPfEtDmr) then ("--pFetDmr " +  '"' + pfPfEtDmr + '"') else ""} \
      ~{if defined(minMinNominalDif) then ("--minNominalDif " +  '"' + minMinNominalDif + '"') else ""} \
      ~{if defined(pPSimDmc) then ("--pSimDmc " +  '"' + pPSimDmc + '"') else ""} \
      ~{if defined(psiPsiMdMr) then ("--pSimDmr " +  '"' + psiPsiMdMr + '"') else ""} \
      ~{if defined(mMIncredibleDif) then ("--minCredibleDif " +  '"' + mMIncredibleDif + '"') else ""} \
      ~{if defined(toprankToprankByCdIf) then ("--topRankByCDif " +  '"' + toprankToprankByCdIf + '"') else ""} \
      ~{if defined(toprankToprankByPsiM) then ("--topRankByPSim " +  '"' + toprankToprankByPsiM + '"') else ""} \
      ~{if defined(mindMindMcsInDmr) then ("--minDmcsInDmr " +  '"' + mindMindMcsInDmr + '"') else ""} \
      ~{if defined(maxMaxDistConsDmcs) then ("--maxDistConsDmcs " +  '"' + maxMaxDistConsDmcs + '"') else ""} \
      ~{true="-f" false="" fF}
  >>>
}