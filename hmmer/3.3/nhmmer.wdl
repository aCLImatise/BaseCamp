version 1.0

task Nhmmer {
  input {
    String oO
    String aA
    String tblTblOut
    String dfDfAmTblOut
    String aliAliScoresOut
    String hmmHmmOut
    Boolean accAcc
    Boolean noNoAli
    Boolean noNoTextW
    String textTextW
    Boolean singleSingleMx
    String popenPopen
    String pPExtend
    String mxMxFile
    String eE
    String tT
    String inceInce
    String inInCt
    Boolean cutCutGa
    Boolean cutCutNc
    Boolean cutCutTc
    Boolean maxMax
    String f1F1
    String f2F2
    String f3F3
    Boolean noNoBias
    Boolean dnaDna
    Boolean rnaRna
    String seedSeedMaxDepth
    String seedSeedScThresh
    String seedSeedScDensity
    String seedSeedDropMaxLen
    String seedSeedDropLim
    String seedSeedReqPos
    String seedSeedConSensMatch
    String seedSeedSsvLength
    Boolean qQHmm
    Boolean qQFastA
    Boolean qmsQmsA
    String qQFormat
    String tTFormat
    Boolean nonull2Nonull2
    String zZ
    String seedSeed
    String wWBeta
    String wWLength
    String blockBlockLength
    Boolean watsonWatson
    Boolean crickCrick
    String cpuCpu
  }
  command <<<
    nhmmer \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(aA) then ("-A " +  '"' + aA + '"') else ""} \
      ~{if defined(tblTblOut) then ("--tblout " +  '"' + tblTblOut + '"') else ""} \
      ~{if defined(dfDfAmTblOut) then ("--dfamtblout " +  '"' + dfDfAmTblOut + '"') else ""} \
      ~{if defined(aliAliScoresOut) then ("--aliscoresout " +  '"' + aliAliScoresOut + '"') else ""} \
      ~{if defined(hmmHmmOut) then ("--hmmout " +  '"' + hmmHmmOut + '"') else ""} \
      ~{true="--acc" false="" accAcc} \
      ~{true="--noali" false="" noNoAli} \
      ~{true="--notextw" false="" noNoTextW} \
      ~{if defined(textTextW) then ("--textw " +  '"' + textTextW + '"') else ""} \
      ~{true="--singlemx" false="" singleSingleMx} \
      ~{if defined(popenPopen) then ("--popen " +  '"' + popenPopen + '"') else ""} \
      ~{if defined(pPExtend) then ("--pextend " +  '"' + pPExtend + '"') else ""} \
      ~{if defined(mxMxFile) then ("--mxfile " +  '"' + mxMxFile + '"') else ""} \
      ~{if defined(eE) then ("-E " +  '"' + eE + '"') else ""} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(inceInce) then ("--incE " +  '"' + inceInce + '"') else ""} \
      ~{if defined(inInCt) then ("--incT " +  '"' + inInCt + '"') else ""} \
      ~{true="--cut_ga" false="" cutCutGa} \
      ~{true="--cut_nc" false="" cutCutNc} \
      ~{true="--cut_tc" false="" cutCutTc} \
      ~{true="--max" false="" maxMax} \
      ~{if defined(f1F1) then ("--F1 " +  '"' + f1F1 + '"') else ""} \
      ~{if defined(f2F2) then ("--F2 " +  '"' + f2F2 + '"') else ""} \
      ~{if defined(f3F3) then ("--F3 " +  '"' + f3F3 + '"') else ""} \
      ~{true="--nobias" false="" noNoBias} \
      ~{true="--dna" false="" dnaDna} \
      ~{true="--rna" false="" rnaRna} \
      ~{if defined(seedSeedMaxDepth) then ("--seed_max_depth " +  '"' + seedSeedMaxDepth + '"') else ""} \
      ~{if defined(seedSeedScThresh) then ("--seed_sc_thresh " +  '"' + seedSeedScThresh + '"') else ""} \
      ~{if defined(seedSeedScDensity) then ("--seed_sc_density " +  '"' + seedSeedScDensity + '"') else ""} \
      ~{if defined(seedSeedDropMaxLen) then ("--seed_drop_max_len " +  '"' + seedSeedDropMaxLen + '"') else ""} \
      ~{if defined(seedSeedDropLim) then ("--seed_drop_lim " +  '"' + seedSeedDropLim + '"') else ""} \
      ~{if defined(seedSeedReqPos) then ("--seed_req_pos " +  '"' + seedSeedReqPos + '"') else ""} \
      ~{if defined(seedSeedConSensMatch) then ("--seed_consens_match " +  '"' + seedSeedConSensMatch + '"') else ""} \
      ~{if defined(seedSeedSsvLength) then ("--seed_ssv_length " +  '"' + seedSeedSsvLength + '"') else ""} \
      ~{true="--qhmm" false="" qQHmm} \
      ~{true="--qfasta" false="" qQFastA} \
      ~{true="--qmsa" false="" qmsQmsA} \
      ~{if defined(qQFormat) then ("--qformat " +  '"' + qQFormat + '"') else ""} \
      ~{if defined(tTFormat) then ("--tformat " +  '"' + tTFormat + '"') else ""} \
      ~{true="--nonull2" false="" nonull2Nonull2} \
      ~{if defined(zZ) then ("-Z " +  '"' + zZ + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(wWBeta) then ("--w_beta " +  '"' + wWBeta + '"') else ""} \
      ~{if defined(wWLength) then ("--w_length " +  '"' + wWLength + '"') else ""} \
      ~{if defined(blockBlockLength) then ("--block_length " +  '"' + blockBlockLength + '"') else ""} \
      ~{true="--watson" false="" watsonWatson} \
      ~{true="--crick" false="" crickCrick} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""}
  >>>
}