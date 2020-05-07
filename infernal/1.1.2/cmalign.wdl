version 1.0

task Cmalign {
  input {
    String oO
    Boolean gG
    Boolean optOptAcc
    Boolean cyCyK
    Boolean sampleSample
    String seedSeed
    Boolean notNotRunC
    Boolean subSub
    Boolean hHBanded
    String tauTau
    String mxMxSize
    Boolean fixedFixedTau
    String maxMaxTau
    Boolean nonNonBanded
    Boolean smallSmall
    String sSFile
    String tTFile
    String iIFile
    String elElFile
    String mapMapAli
    Boolean mapMapStr
    Boolean nossNoss
    String inInFormat
    String outOutFormat
    Boolean dnaDnaOut
    Boolean noNoProb
    Boolean matchMatchOnly
    Boolean iILeaved
    String regressRegress
    Boolean verboseVerbose
    String cpuCpu
    String? cmCmFile
    String? seqSeqFile
  }
  command <<<
    cmalign \
      ~{cmCmFile} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-g" false="" gG} \
      ~{true="--optacc" false="" optOptAcc} \
      ~{true="--cyk" false="" cyCyK} \
      ~{true="--sample" false="" sampleSample} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="--notrunc" false="" notNotRunC} \
      ~{true="--sub" false="" subSub} \
      ~{true="--hbanded" false="" hHBanded} \
      ~{if defined(tauTau) then ("--tau " +  '"' + tauTau + '"') else ""} \
      ~{if defined(mxMxSize) then ("--mxsize " +  '"' + mxMxSize + '"') else ""} \
      ~{true="--fixedtau" false="" fixedFixedTau} \
      ~{if defined(maxMaxTau) then ("--maxtau " +  '"' + maxMaxTau + '"') else ""} \
      ~{true="--nonbanded" false="" nonNonBanded} \
      ~{true="--small" false="" smallSmall} \
      ~{if defined(sSFile) then ("--sfile " +  '"' + sSFile + '"') else ""} \
      ~{if defined(tTFile) then ("--tfile " +  '"' + tTFile + '"') else ""} \
      ~{if defined(iIFile) then ("--ifile " +  '"' + iIFile + '"') else ""} \
      ~{if defined(elElFile) then ("--elfile " +  '"' + elElFile + '"') else ""} \
      ~{if defined(mapMapAli) then ("--mapali " +  '"' + mapMapAli + '"') else ""} \
      ~{true="--mapstr" false="" mapMapStr} \
      ~{true="--noss" false="" nossNoss} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{if defined(outOutFormat) then ("--outformat " +  '"' + outOutFormat + '"') else ""} \
      ~{true="--dnaout" false="" dnaDnaOut} \
      ~{true="--noprob" false="" noNoProb} \
      ~{true="--matchonly" false="" matchMatchOnly} \
      ~{true="--ileaved" false="" iILeaved} \
      ~{if defined(regressRegress) then ("--regress " +  '"' + regressRegress + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{seqSeqFile}
  >>>
}