version 1.0

task MungeSumstats.py {
  input {
    String sumSumStats
    String nN
    String nNCas
    String nNCon
    String outOut
    String infoInfoMin
    String mafMafMin
    Boolean daneDaneR
    Boolean daneDaneRN
    Boolean noNoAlleles
    String mergeMergeAlleles
    String nNMin
    String chunksizeChunksize
    String snpSnp
    String nNCol
    String nNCasCol
    String nNConCol
    String a1A1
    String a2A2
    String pP
    String frqFrq
    String signedSignedSumStats
    String infoInfo
    String infoInfoList
    String nNStudy
    String nNStudyMin
    String ignoreIgnore
    Boolean a1A1Inc
    Boolean keepKeepMaf
  }
  command <<<
    munge_sumstats.py \
      ~{if defined(sumSumStats) then ("--sumstats " +  '"' + sumSumStats + '"') else ""} \
      ~{if defined(nN) then ("--N " +  '"' + nN + '"') else ""} \
      ~{if defined(nNCas) then ("--N-cas " +  '"' + nNCas + '"') else ""} \
      ~{if defined(nNCon) then ("--N-con " +  '"' + nNCon + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(infoInfoMin) then ("--info-min " +  '"' + infoInfoMin + '"') else ""} \
      ~{if defined(mafMafMin) then ("--maf-min " +  '"' + mafMafMin + '"') else ""} \
      ~{true="--daner" false="" daneDaneR} \
      ~{true="--daner-n" false="" daneDaneRN} \
      ~{true="--no-alleles" false="" noNoAlleles} \
      ~{if defined(mergeMergeAlleles) then ("--merge-alleles " +  '"' + mergeMergeAlleles + '"') else ""} \
      ~{if defined(nNMin) then ("--n-min " +  '"' + nNMin + '"') else ""} \
      ~{if defined(chunksizeChunksize) then ("--chunksize " +  '"' + chunksizeChunksize + '"') else ""} \
      ~{if defined(snpSnp) then ("--snp " +  '"' + snpSnp + '"') else ""} \
      ~{if defined(nNCol) then ("--N-col " +  '"' + nNCol + '"') else ""} \
      ~{if defined(nNCasCol) then ("--N-cas-col " +  '"' + nNCasCol + '"') else ""} \
      ~{if defined(nNConCol) then ("--N-con-col " +  '"' + nNConCol + '"') else ""} \
      ~{if defined(a1A1) then ("--a1 " +  '"' + a1A1 + '"') else ""} \
      ~{if defined(a2A2) then ("--a2 " +  '"' + a2A2 + '"') else ""} \
      ~{if defined(pP) then ("--p " +  '"' + pP + '"') else ""} \
      ~{if defined(frqFrq) then ("--frq " +  '"' + frqFrq + '"') else ""} \
      ~{if defined(signedSignedSumStats) then ("--signed-sumstats " +  '"' + signedSignedSumStats + '"') else ""} \
      ~{if defined(infoInfo) then ("--info " +  '"' + infoInfo + '"') else ""} \
      ~{if defined(infoInfoList) then ("--info-list " +  '"' + infoInfoList + '"') else ""} \
      ~{if defined(nNStudy) then ("--nstudy " +  '"' + nNStudy + '"') else ""} \
      ~{if defined(nNStudyMin) then ("--nstudy-min " +  '"' + nNStudyMin + '"') else ""} \
      ~{if defined(ignoreIgnore) then ("--ignore " +  '"' + ignoreIgnore + '"') else ""} \
      ~{true="--a1-inc" false="" a1A1Inc} \
      ~{true="--keep-maf" false="" keepKeepMaf}
  >>>
}