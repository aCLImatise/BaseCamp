version 1.0

task RScapeSim {
  input {
    Boolean vV
    Boolean dnaDna
    Boolean rnaRna
    Boolean aminoAmino
    Boolean naiveNaive
    Boolean rnRnAss
    Boolean pottsPotts
    String pottsPottsFile
    String cntCntMaxd
    String pdbPdbFile
    String pottPottSigma
    Boolean ptpPtpGauss
    Boolean ptpPtpFile
    Boolean pottsPotts
    String lL
    String nN
    String ablAbl
    String atAtBl
    Boolean noNoIndels
    Boolean eqEqBranch
    Boolean starStar
    Boolean randRand
    Boolean givenGiven
    Boolean simSim
    String usesUsesQ
    String evoEvoModel
    String riboRiboFile
    String mxMx
    String outdirOutdir
    String oO
    Boolean dnaDna
    Boolean rnaRna
    Boolean aminoAmino
    String inInFormat
    Boolean oneOneMsa
    String fF
    String iI
    String iI
    String gapGapThresh
    String miniMiniD
    String maxMaxId
    String toToL
    String seedSeed
    String? msaMsa
  }
  command <<<
    R-scape-sim \
      ~{msaMsa} \
      ~{true="-v" false="" vV} \
      ~{true="--dna" false="" dnaDna} \
      ~{true="--rna" false="" rnaRna} \
      ~{true="--amino" false="" aminoAmino} \
      ~{true="--naive" false="" naiveNaive} \
      ~{true="--rnass" false="" rnRnAss} \
      ~{true="--potts" false="" pottsPotts} \
      ~{if defined(pottsPottsFile) then ("--pottsfile " +  '"' + pottsPottsFile + '"') else ""} \
      ~{if defined(cntCntMaxd) then ("--cntmaxD " +  '"' + cntCntMaxd + '"') else ""} \
      ~{if defined(pdbPdbFile) then ("--pdbfile " +  '"' + pdbPdbFile + '"') else ""} \
      ~{if defined(pottPottSigma) then ("--pottsigma " +  '"' + pottPottSigma + '"') else ""} \
      ~{true="--ptpgauss" false="" ptpPtpGauss} \
      ~{true="--ptpfile" false="" ptpPtpFile} \
      ~{true="--potts" false="" pottsPotts} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""} \
      ~{if defined(ablAbl) then ("--abl " +  '"' + ablAbl + '"') else ""} \
      ~{if defined(atAtBl) then ("--atbl " +  '"' + atAtBl + '"') else ""} \
      ~{true="--noindels" false="" noNoIndels} \
      ~{true="--eqbranch" false="" eqEqBranch} \
      ~{true="--star" false="" starStar} \
      ~{true="--rand" false="" randRand} \
      ~{true="--given" false="" givenGiven} \
      ~{true="--sim" false="" simSim} \
      ~{if defined(usesUsesQ) then ("--usesq " +  '"' + usesUsesQ + '"') else ""} \
      ~{if defined(evoEvoModel) then ("--evomodel " +  '"' + evoEvoModel + '"') else ""} \
      ~{if defined(riboRiboFile) then ("--ribofile " +  '"' + riboRiboFile + '"') else ""} \
      ~{if defined(mxMx) then ("--mx " +  '"' + mxMx + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="--dna" false="" dnaDna} \
      ~{true="--rna" false="" rnaRna} \
      ~{true="--amino" false="" aminoAmino} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{true="--onemsa" false="" oneOneMsa} \
      ~{if defined(fF) then ("-F " +  '"' + fF + '"') else ""} \
      ~{if defined(iI) then ("-I " +  '"' + iI + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(gapGapThresh) then ("--gapthresh " +  '"' + gapGapThresh + '"') else ""} \
      ~{if defined(miniMiniD) then ("--minid " +  '"' + miniMiniD + '"') else ""} \
      ~{if defined(maxMaxId) then ("--maxid " +  '"' + maxMaxId + '"') else ""} \
      ~{if defined(toToL) then ("--tol " +  '"' + toToL + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""}
  >>>
}