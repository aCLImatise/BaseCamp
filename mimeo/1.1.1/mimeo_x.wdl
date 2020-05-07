version 1.0

task MimeoX {
  input {
    String aADir
    String bBDir
    String aAFastA
    String bBFastA
    Boolean recycleRecycle
    String outdirOutdir
    String gffGffOut
    String outfileOutfile
    Boolean verboseVerbose
    String labelLabel
    String prefixPrefix
    Boolean keepKeepTemp
    String lzLzPath
    String bedBedTools
    Int miniMiniDt
    Int minMinLen
    Int minMinCov
    String hspHspThresh
  }
  command <<<
    mimeo-x \
      ~{if defined(aADir) then ("--adir " +  '"' + aADir + '"') else ""} \
      ~{if defined(bBDir) then ("--bdir " +  '"' + bBDir + '"') else ""} \
      ~{if defined(aAFastA) then ("--afasta " +  '"' + aAFastA + '"') else ""} \
      ~{if defined(bBFastA) then ("--bfasta " +  '"' + bBFastA + '"') else ""} \
      ~{true="--recycle" false="" recycleRecycle} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(gffGffOut) then ("--gffout " +  '"' + gffGffOut + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(labelLabel) then ("--label " +  '"' + labelLabel + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--keeptemp" false="" keepKeepTemp} \
      ~{if defined(lzLzPath) then ("--lzpath " +  '"' + lzLzPath + '"') else ""} \
      ~{if defined(bedBedTools) then ("--bedtools " +  '"' + bedBedTools + '"') else ""} \
      ~{if defined(miniMiniDt) then ("--minIdt " +  '"' + miniMiniDt + '"') else ""} \
      ~{if defined(minMinLen) then ("--minLen " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(minMinCov) then ("--minCov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(hspHspThresh) then ("--hspthresh " +  '"' + hspHspThresh + '"') else ""}
  >>>
}