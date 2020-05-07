version 1.0

task Hhsearch {
  input {
    File iI
    String dD
    Boolean eE
    String mM
    Boolean mM
    Boolean tagsTags
    File oO
    File oa3mOa3m
    String blastBlastTab
    File opsiOpsi
    File ohOhHm
    Boolean addAddCons
    Boolean hideHideCons
    Boolean hideHidePred
    Boolean hideHideDssp
    Boolean showShowSsConf
    File ofOfAs
    Int seqSeq
    Int aliAliW
    Boolean pP
    Boolean eE
    Int zZ
    Int zZ
    Int bB
    Int bB
    Boolean allAll
    Boolean idId
    Boolean diffDiff
    Boolean covCov
    Boolean qidQid
    Boolean qscQsc
    Boolean neffNeff
    Boolean markMark
    Boolean noNoRealign
    Int ovlpOvlp
    Boolean mactMact
    Boolean globGlob
    Boolean realignRealign
    String exclExcl
    Int realignRealignMax
    Int altAlt
    Float smSmIn
    Boolean shiftShift
    Boolean corrCorr
    Boolean scSc
    Boolean ssmSsm
    Boolean sswSsw
    Boolean ssaSsa
    Boolean wgWg
    Boolean gapGapB
    Boolean gapGapD
    Boolean gapeGape
    Boolean gapGapF
    Boolean gapGapG
    Boolean gapGapH
    Boolean gapGapI
    Boolean egEgQ
    Boolean egtEgt
    Boolean pcPcHhmConTxtA
    Boolean pcPcHhmConTxtB
    Boolean pcPcHhmConTxtC
    Boolean pcPcHhmNoConTxtA
    Boolean pcPcHhmNoConTxtB
    Boolean pcPcHhmNoConTxtC
    Boolean noNoConTxt
    File conConTxt
    Boolean cswCsw
    Boolean csbCsb
    Int vV
    Int cpuCpu
    File scoresScores
    Boolean aATab
    Int maxMaxSeq
    Int maxMaxRes
    Boolean maxmemMaxmem
  }
  command <<<
    hhsearch \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{true="-e" false="" eE} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{true="-M" false="" mM} \
      ~{true="-tags" false="" tagsTags} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(oa3mOa3m) then ("-oa3m " +  '"' + oa3mOa3m + '"') else ""} \
      ~{if defined(blastBlastTab) then ("-blasttab " +  '"' + blastBlastTab + '"') else ""} \
      ~{if defined(opsiOpsi) then ("-opsi " +  '"' + opsiOpsi + '"') else ""} \
      ~{if defined(ohOhHm) then ("-ohhm " +  '"' + ohOhHm + '"') else ""} \
      ~{true="-add_cons" false="" addAddCons} \
      ~{true="-hide_cons" false="" hideHideCons} \
      ~{true="-hide_pred" false="" hideHidePred} \
      ~{true="-hide_dssp" false="" hideHideDssp} \
      ~{true="-show_ssconf" false="" showShowSsConf} \
      ~{if defined(ofOfAs) then ("-Ofas " +  '"' + ofOfAs + '"') else ""} \
      ~{if defined(seqSeq) then ("-seq " +  '"' + seqSeq + '"') else ""} \
      ~{if defined(aliAliW) then ("-aliw " +  '"' + aliAliW + '"') else ""} \
      ~{true="-p" false="" pP} \
      ~{true="-E" false="" eE} \
      ~{if defined(zZ) then ("-Z " +  '"' + zZ + '"') else ""} \
      ~{if defined(zZ) then ("-z " +  '"' + zZ + '"') else ""} \
      ~{if defined(bB) then ("-B " +  '"' + bB + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{true="-all" false="" allAll} \
      ~{true="-id" false="" idId} \
      ~{true="-diff" false="" diffDiff} \
      ~{true="-cov" false="" covCov} \
      ~{true="-qid" false="" qidQid} \
      ~{true="-qsc" false="" qscQsc} \
      ~{true="-neff" false="" neffNeff} \
      ~{true="-mark" false="" markMark} \
      ~{true="-norealign" false="" noNoRealign} \
      ~{if defined(ovlpOvlp) then ("-ovlp " +  '"' + ovlpOvlp + '"') else ""} \
      ~{true="-mact" false="" mactMact} \
      ~{true="-glob" false="" globGlob} \
      ~{true="-realign" false="" realignRealign} \
      ~{if defined(exclExcl) then ("-excl " +  '"' + exclExcl + '"') else ""} \
      ~{if defined(realignRealignMax) then ("-realign_max " +  '"' + realignRealignMax + '"') else ""} \
      ~{if defined(altAlt) then ("-alt " +  '"' + altAlt + '"') else ""} \
      ~{if defined(smSmIn) then ("-smin " +  '"' + smSmIn + '"') else ""} \
      ~{true="-shift" false="" shiftShift} \
      ~{true="-corr" false="" corrCorr} \
      ~{true="-sc" false="" scSc} \
      ~{true="-ssm" false="" ssmSsm} \
      ~{true="-ssw" false="" sswSsw} \
      ~{true="-ssa" false="" ssaSsa} \
      ~{true="-wg" false="" wgWg} \
      ~{true="-gapb" false="" gapGapB} \
      ~{true="-gapd" false="" gapGapD} \
      ~{true="-gape" false="" gapeGape} \
      ~{true="-gapf" false="" gapGapF} \
      ~{true="-gapg" false="" gapGapG} \
      ~{true="-gaph" false="" gapGapH} \
      ~{true="-gapi" false="" gapGapI} \
      ~{true="-egq" false="" egEgQ} \
      ~{true="-egt" false="" egtEgt} \
      ~{true="-pc_hhm_contxt_a" false="" pcPcHhmConTxtA} \
      ~{true="-pc_hhm_contxt_b" false="" pcPcHhmConTxtB} \
      ~{true="-pc_hhm_contxt_c" false="" pcPcHhmConTxtC} \
      ~{true="-pc_hhm_nocontxt_a" false="" pcPcHhmNoConTxtA} \
      ~{true="-pc_hhm_nocontxt_b" false="" pcPcHhmNoConTxtB} \
      ~{true="-pc_hhm_nocontxt_c" false="" pcPcHhmNoConTxtC} \
      ~{true="-nocontxt" false="" noNoConTxt} \
      ~{if defined(conConTxt) then ("-contxt " +  '"' + conConTxt + '"') else ""} \
      ~{true="-csw" false="" cswCsw} \
      ~{true="-csb" false="" csbCsb} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{if defined(cpuCpu) then ("-cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{if defined(scoresScores) then ("-scores " +  '"' + scoresScores + '"') else ""} \
      ~{true="-atab" false="" aATab} \
      ~{if defined(maxMaxSeq) then ("-maxseq " +  '"' + maxMaxSeq + '"') else ""} \
      ~{if defined(maxMaxRes) then ("-maxres " +  '"' + maxMaxRes + '"') else ""} \
      ~{true="-maxmem" false="" maxmemMaxmem}
  >>>
}