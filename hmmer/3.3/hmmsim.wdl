version 1.0

task Hmmsim {
  input {
    Boolean aA
    Boolean vV
    String lL
    String nN
    String oO
    String aAFile
    String eEFile
    String fFFile
    String pfilePfile
    String xXFile
    Boolean fsFs
    Boolean swSw
    Boolean lsLs
    Boolean sS
    Boolean vVIt
    Boolean fwdFwd
    Boolean hybHyb
    Boolean msvMsv
    Boolean fastFast
    String tmTmIn
    String tmaxTmax
    String tTPoints
    Boolean tTLinear
    String emlEml
    String emnEmn
    String evlEvl
    String evnEvn
    String eflEfl
    String efnEfn
    String eftEft
    Boolean stallStall
    String seedSeed
    Boolean bgBgFlat
    Boolean bgBgComp
    Boolean xXNoLengthModel
    String nuNu
    String pPThresh
    String? hmmHmmFile
  }
  command <<<
    hmmsim \
      ~{hmmHmmFile} \
      ~{true="-a" false="" aA} \
      ~{true="-v" false="" vV} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(aAFile) then ("--afile " +  '"' + aAFile + '"') else ""} \
      ~{if defined(eEFile) then ("--efile " +  '"' + eEFile + '"') else ""} \
      ~{if defined(fFFile) then ("--ffile " +  '"' + fFFile + '"') else ""} \
      ~{if defined(pfilePfile) then ("--pfile " +  '"' + pfilePfile + '"') else ""} \
      ~{if defined(xXFile) then ("--xfile " +  '"' + xXFile + '"') else ""} \
      ~{true="--fs" false="" fsFs} \
      ~{true="--sw" false="" swSw} \
      ~{true="--ls" false="" lsLs} \
      ~{true="--s" false="" sS} \
      ~{true="--vit" false="" vVIt} \
      ~{true="--fwd" false="" fwdFwd} \
      ~{true="--hyb" false="" hybHyb} \
      ~{true="--msv" false="" msvMsv} \
      ~{true="--fast" false="" fastFast} \
      ~{if defined(tmTmIn) then ("--tmin " +  '"' + tmTmIn + '"') else ""} \
      ~{if defined(tmaxTmax) then ("--tmax " +  '"' + tmaxTmax + '"') else ""} \
      ~{if defined(tTPoints) then ("--tpoints " +  '"' + tTPoints + '"') else ""} \
      ~{true="--tlinear" false="" tTLinear} \
      ~{if defined(emlEml) then ("--EmL " +  '"' + emlEml + '"') else ""} \
      ~{if defined(emnEmn) then ("--EmN " +  '"' + emnEmn + '"') else ""} \
      ~{if defined(evlEvl) then ("--EvL " +  '"' + evlEvl + '"') else ""} \
      ~{if defined(evnEvn) then ("--EvN " +  '"' + evnEvn + '"') else ""} \
      ~{if defined(eflEfl) then ("--EfL " +  '"' + eflEfl + '"') else ""} \
      ~{if defined(efnEfn) then ("--EfN " +  '"' + efnEfn + '"') else ""} \
      ~{if defined(eftEft) then ("--Eft " +  '"' + eftEft + '"') else ""} \
      ~{true="--stall" false="" stallStall} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="--bgflat" false="" bgBgFlat} \
      ~{true="--bgcomp" false="" bgBgComp} \
      ~{true="--x-no-lengthmodel" false="" xXNoLengthModel} \
      ~{if defined(nuNu) then ("--nu " +  '"' + nuNu + '"') else ""} \
      ~{if defined(pPThresh) then ("--pthresh " +  '"' + pPThresh + '"') else ""}
  >>>
}