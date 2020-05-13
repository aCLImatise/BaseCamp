version 1.0

task Sciphi {
  input {
    String inIn
    String ilIl
    String exEx
    String meMe
    String incInc
    String oO
    String olOl
    String saSa
    String lL
    String lsLs
    String lzLz
    String zyZyG
    String prPr
    Boolean uU
    String eE
    String urUr
    String seedSeed
    String tT
    String wildWildMean
    String wildWildOverDis
    String mutationMutationOverDis
    String eseEse
    String subSub
    String mdMd
    String mmwMmw
    String cwmCwm
    String mnpMnp
    String mcMc
    String msMs
    String mfMf
    String mffMff
    String bnsBns
    String bncBnc
    String ncfNcf
    String mncMnc
    String uncUnc
  }
  command <<<
    sciphi \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{if defined(ilIl) then ("--il " +  '"' + ilIl + '"') else ""} \
      ~{if defined(exEx) then ("--ex " +  '"' + exEx + '"') else ""} \
      ~{if defined(meMe) then ("--me " +  '"' + meMe + '"') else ""} \
      ~{if defined(incInc) then ("--inc " +  '"' + incInc + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(olOl) then ("--ol " +  '"' + olOl + '"') else ""} \
      ~{if defined(saSa) then ("--sa " +  '"' + saSa + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(lsLs) then ("--ls " +  '"' + lsLs + '"') else ""} \
      ~{if defined(lzLz) then ("--lz " +  '"' + lzLz + '"') else ""} \
      ~{if defined(zyZyG) then ("--zyg " +  '"' + zyZyG + '"') else ""} \
      ~{if defined(prPr) then ("--pr " +  '"' + prPr + '"') else ""} \
      ~{true="-u" false="" uU} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(urUr) then ("--ur " +  '"' + urUr + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(wildWildMean) then ("--wildMean " +  '"' + wildWildMean + '"') else ""} \
      ~{if defined(wildWildOverDis) then ("--wildOverDis " +  '"' + wildWildOverDis + '"') else ""} \
      ~{if defined(mutationMutationOverDis) then ("--mutationOverDis " +  '"' + mutationMutationOverDis + '"') else ""} \
      ~{if defined(eseEse) then ("--ese " +  '"' + eseEse + '"') else ""} \
      ~{if defined(subSub) then ("--sub " +  '"' + subSub + '"') else ""} \
      ~{if defined(mdMd) then ("--md " +  '"' + mdMd + '"') else ""} \
      ~{if defined(mmwMmw) then ("--mmw " +  '"' + mmwMmw + '"') else ""} \
      ~{if defined(cwmCwm) then ("--cwm " +  '"' + cwmCwm + '"') else ""} \
      ~{if defined(mnpMnp) then ("--mnp " +  '"' + mnpMnp + '"') else ""} \
      ~{if defined(mcMc) then ("--mc " +  '"' + mcMc + '"') else ""} \
      ~{if defined(msMs) then ("--ms " +  '"' + msMs + '"') else ""} \
      ~{if defined(mfMf) then ("--mf " +  '"' + mfMf + '"') else ""} \
      ~{if defined(mffMff) then ("--mff " +  '"' + mffMff + '"') else ""} \
      ~{if defined(bnsBns) then ("--bns " +  '"' + bnsBns + '"') else ""} \
      ~{if defined(bncBnc) then ("--bnc " +  '"' + bncBnc + '"') else ""} \
      ~{if defined(ncfNcf) then ("--ncf " +  '"' + ncfNcf + '"') else ""} \
      ~{if defined(mncMnc) then ("--mnc " +  '"' + mncMnc + '"') else ""} \
      ~{if defined(uncUnc) then ("--unc " +  '"' + uncUnc + '"') else ""}
  >>>
}