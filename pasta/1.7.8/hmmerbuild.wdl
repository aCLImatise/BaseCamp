version 1.0

task Hmmerbuild {
  input {
    String nN
    String oO
    String oO
    Boolean aminoAmino
    Boolean dnaDna
    Boolean rnaRna
    Boolean fastFast
    Boolean handHand
    String symSymFrac
    String fragFragThresh
    Boolean wpbWpb
    Boolean wgsWgsC
    Boolean wWBlosum
    Boolean wWNone
    Boolean wWGiven
    String widWid
    Boolean eEEnt
    Boolean ecEcLust
    Boolean enEnOne
    String eESet
    String ereEre
    String eESigma
    String eidEid
    Boolean pPNone
    Boolean plaPlaPlace
    Boolean singleSingleMx
    String popenPopen
    String pPExtend
    String mxMx
    String mxMxFile
    String emlEml
    String emnEmn
    String evlEvl
    String evnEvn
    String eflEfl
    String efnEfn
    String eftEft
    String cpuCpu
    Boolean stallStall
    String inInFormat
    String seedSeed
    String wWBeta
    String wWLength
    String maxMaxInsertLen
    String? hmmHmmFileOut
    String? msaMsaFile
  }
  command <<<
    hmmerbuild \
      ~{hmmHmmFileOut} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{true="--amino" false="" aminoAmino} \
      ~{true="--dna" false="" dnaDna} \
      ~{true="--rna" false="" rnaRna} \
      ~{true="--fast" false="" fastFast} \
      ~{true="--hand" false="" handHand} \
      ~{if defined(symSymFrac) then ("--symfrac " +  '"' + symSymFrac + '"') else ""} \
      ~{if defined(fragFragThresh) then ("--fragthresh " +  '"' + fragFragThresh + '"') else ""} \
      ~{true="--wpb" false="" wpbWpb} \
      ~{true="--wgsc" false="" wgsWgsC} \
      ~{true="--wblosum" false="" wWBlosum} \
      ~{true="--wnone" false="" wWNone} \
      ~{true="--wgiven" false="" wWGiven} \
      ~{if defined(widWid) then ("--wid " +  '"' + widWid + '"') else ""} \
      ~{true="--eent" false="" eEEnt} \
      ~{true="--eclust" false="" ecEcLust} \
      ~{true="--enone" false="" enEnOne} \
      ~{if defined(eESet) then ("--eset " +  '"' + eESet + '"') else ""} \
      ~{if defined(ereEre) then ("--ere " +  '"' + ereEre + '"') else ""} \
      ~{if defined(eESigma) then ("--esigma " +  '"' + eESigma + '"') else ""} \
      ~{if defined(eidEid) then ("--eid " +  '"' + eidEid + '"') else ""} \
      ~{true="--pnone" false="" pPNone} \
      ~{true="--plaplace" false="" plaPlaPlace} \
      ~{true="--singlemx" false="" singleSingleMx} \
      ~{if defined(popenPopen) then ("--popen " +  '"' + popenPopen + '"') else ""} \
      ~{if defined(pPExtend) then ("--pextend " +  '"' + pPExtend + '"') else ""} \
      ~{if defined(mxMx) then ("--mx " +  '"' + mxMx + '"') else ""} \
      ~{if defined(mxMxFile) then ("--mxfile " +  '"' + mxMxFile + '"') else ""} \
      ~{if defined(emlEml) then ("--EmL " +  '"' + emlEml + '"') else ""} \
      ~{if defined(emnEmn) then ("--EmN " +  '"' + emnEmn + '"') else ""} \
      ~{if defined(evlEvl) then ("--EvL " +  '"' + evlEvl + '"') else ""} \
      ~{if defined(evnEvn) then ("--EvN " +  '"' + evnEvn + '"') else ""} \
      ~{if defined(eflEfl) then ("--EfL " +  '"' + eflEfl + '"') else ""} \
      ~{if defined(efnEfn) then ("--EfN " +  '"' + efnEfn + '"') else ""} \
      ~{if defined(eftEft) then ("--Eft " +  '"' + eftEft + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{true="--stall" false="" stallStall} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(wWBeta) then ("--w_beta " +  '"' + wWBeta + '"') else ""} \
      ~{if defined(wWLength) then ("--w_length " +  '"' + wWLength + '"') else ""} \
      ~{if defined(maxMaxInsertLen) then ("--maxinsertlen " +  '"' + maxMaxInsertLen + '"') else ""} \
      ~{msaMsaFile}
  >>>
}