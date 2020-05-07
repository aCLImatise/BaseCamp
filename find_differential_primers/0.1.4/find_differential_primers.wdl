version 1.0

task FindDifferentialPrimers.py {
  input {
    File inInFile
    String outdirOutdir
    String numNumReturn
    Boolean hybridHybridProbe
    Boolean filterFilterGc3Prime
    String singleSingleProduct
    String prodigalProdigal
    String eprimer3Eprimer3
    String blastBlastExe
    String blastBlastDb
    Boolean useUseBlast
    Boolean noNoCds
    Boolean noNoProdigal
    Boolean noprimer3Noprimer3
    Boolean noNoPrimerSearch
    Boolean noNoClassify
    String oOSize
    Int minsizeMinsize
    Int maxsizeMaxsize
    String otmOtm
    Int mintMintM
    Int maxMaxTm
    String ogcOgcPercent
    Int mingMingC
    Int maxMaxGc
    String pPSizeOpt
    String pPSizeMin
    String pPSizeMax
    Int maxMaxPolyX
    String mismatchMismatchPercent
    String oligoOligoOSize
    String oligoOligoMinsize
    String oligoOligoMaxsize
    String oligoOligoOtm
    String oligoOligoMintM
    String oligoOligoMaxTm
    String oligoOligoOgcPercent
    String oligoOligoMingC
    String oligoOligoMaxGc
    String oligoOligoMaxPolyX
    String cpusCpus
    Boolean sgeSge
    Boolean cleanClean
    Boolean cleanCleanOnly
    String logLogFile
    Boolean verboseVerbose
    Boolean debugDebug
    Boolean keepKeepLogs
    String logLogDir
    String? argArg
  }
  command <<<
    find_differential_primers.py \
      ~{argArg} \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(numNumReturn) then ("--numreturn " +  '"' + numNumReturn + '"') else ""} \
      ~{true="--hybridprobe" false="" hybridHybridProbe} \
      ~{true="--filtergc3prime" false="" filterFilterGc3Prime} \
      ~{if defined(singleSingleProduct) then ("--single_product " +  '"' + singleSingleProduct + '"') else ""} \
      ~{if defined(prodigalProdigal) then ("--prodigal " +  '"' + prodigalProdigal + '"') else ""} \
      ~{if defined(eprimer3Eprimer3) then ("--eprimer3 " +  '"' + eprimer3Eprimer3 + '"') else ""} \
      ~{if defined(blastBlastExe) then ("--blast_exe " +  '"' + blastBlastExe + '"') else ""} \
      ~{if defined(blastBlastDb) then ("--blastdb " +  '"' + blastBlastDb + '"') else ""} \
      ~{true="--useblast" false="" useUseBlast} \
      ~{true="--nocds" false="" noNoCds} \
      ~{true="--noprodigal" false="" noNoProdigal} \
      ~{true="--noprimer3" false="" noprimer3Noprimer3} \
      ~{true="--noprimersearch" false="" noNoPrimerSearch} \
      ~{true="--noclassify" false="" noNoClassify} \
      ~{if defined(oOSize) then ("--osize " +  '"' + oOSize + '"') else ""} \
      ~{if defined(minsizeMinsize) then ("--minsize " +  '"' + minsizeMinsize + '"') else ""} \
      ~{if defined(maxsizeMaxsize) then ("--maxsize " +  '"' + maxsizeMaxsize + '"') else ""} \
      ~{if defined(otmOtm) then ("--otm " +  '"' + otmOtm + '"') else ""} \
      ~{if defined(mintMintM) then ("--mintm " +  '"' + mintMintM + '"') else ""} \
      ~{if defined(maxMaxTm) then ("--maxtm " +  '"' + maxMaxTm + '"') else ""} \
      ~{if defined(ogcOgcPercent) then ("--ogcpercent " +  '"' + ogcOgcPercent + '"') else ""} \
      ~{if defined(mingMingC) then ("--mingc " +  '"' + mingMingC + '"') else ""} \
      ~{if defined(maxMaxGc) then ("--maxgc " +  '"' + maxMaxGc + '"') else ""} \
      ~{if defined(pPSizeOpt) then ("--psizeopt " +  '"' + pPSizeOpt + '"') else ""} \
      ~{if defined(pPSizeMin) then ("--psizemin " +  '"' + pPSizeMin + '"') else ""} \
      ~{if defined(pPSizeMax) then ("--psizemax " +  '"' + pPSizeMax + '"') else ""} \
      ~{if defined(maxMaxPolyX) then ("--maxpolyx " +  '"' + maxMaxPolyX + '"') else ""} \
      ~{if defined(mismatchMismatchPercent) then ("--mismatchpercent " +  '"' + mismatchMismatchPercent + '"') else ""} \
      ~{if defined(oligoOligoOSize) then ("--oligoosize " +  '"' + oligoOligoOSize + '"') else ""} \
      ~{if defined(oligoOligoMinsize) then ("--oligominsize " +  '"' + oligoOligoMinsize + '"') else ""} \
      ~{if defined(oligoOligoMaxsize) then ("--oligomaxsize " +  '"' + oligoOligoMaxsize + '"') else ""} \
      ~{if defined(oligoOligoOtm) then ("--oligootm " +  '"' + oligoOligoOtm + '"') else ""} \
      ~{if defined(oligoOligoMintM) then ("--oligomintm " +  '"' + oligoOligoMintM + '"') else ""} \
      ~{if defined(oligoOligoMaxTm) then ("--oligomaxtm " +  '"' + oligoOligoMaxTm + '"') else ""} \
      ~{if defined(oligoOligoOgcPercent) then ("--oligoogcpercent " +  '"' + oligoOligoOgcPercent + '"') else ""} \
      ~{if defined(oligoOligoMingC) then ("--oligomingc " +  '"' + oligoOligoMingC + '"') else ""} \
      ~{if defined(oligoOligoMaxGc) then ("--oligomaxgc " +  '"' + oligoOligoMaxGc + '"') else ""} \
      ~{if defined(oligoOligoMaxPolyX) then ("--oligomaxpolyx " +  '"' + oligoOligoMaxPolyX + '"') else ""} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{true="--sge" false="" sgeSge} \
      ~{true="--clean" false="" cleanClean} \
      ~{true="--cleanonly" false="" cleanCleanOnly} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--keep_logs" false="" keepKeepLogs} \
      ~{if defined(logLogDir) then ("--log_dir " +  '"' + logLogDir + '"') else ""}
  >>>
}