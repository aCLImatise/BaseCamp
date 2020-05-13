version 1.0

task TinscanAlign {
  input {
    String aADir
    String bBDir
    String pairsPairs
    String outdirOutdir
    String outfileOutfile
    Boolean verboseVerbose
    String lzLzPath
    Int miniMiniDt
    Int minMinLen
    String hspHspThresh
  }
  command <<<
    tinscan-align \
      ~{if defined(aADir) then ("--adir " +  '"' + aADir + '"') else ""} \
      ~{if defined(bBDir) then ("--bdir " +  '"' + bBDir + '"') else ""} \
      ~{if defined(pairsPairs) then ("--pairs " +  '"' + pairsPairs + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(lzLzPath) then ("--lzpath " +  '"' + lzLzPath + '"') else ""} \
      ~{if defined(miniMiniDt) then ("--minIdt " +  '"' + miniMiniDt + '"') else ""} \
      ~{if defined(minMinLen) then ("--minLen " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(hspHspThresh) then ("--hspthresh " +  '"' + hspHspThresh + '"') else ""}
  >>>
}