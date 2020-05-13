version 1.0

task MimoddSnap {
  input {
    String ofileOfile
    String iIFormat
    String oOFormat
    String headerHeader
    String threadsThreads
    String memoryMemory
    Boolean noNoSort
    Boolean quietQuiet
    Boolean verboseVerbose
    Boolean xX
    Boolean mMMatchNotation
    Boolean sortSort
    Boolean dD
    Int sS
    String dD
    String maxMaxSeeds
    String maxMaxHits
    String confConfDiff
    String confConfAdapt
    Boolean errorErrorRep
    Boolean exploreExplore
    Boolean stopStopOnFirst
    String filterFilterOutput
    Boolean ignoreIgnore
    String selectivitySelectivity
    Boolean cC
    String gapGapPenalty
    String idxIdxSeedSize
    String idxIdxSlack
    String idxIdxOverflow
    String idxIdxOut
    Boolean noNoPrefetch
    Boolean bindBindThreads
  }
  command <<<
    mimodd snap \
      ~{if defined(ofileOfile) then ("--ofile " +  '"' + ofileOfile + '"') else ""} \
      ~{if defined(iIFormat) then ("--iformat " +  '"' + iIFormat + '"') else ""} \
      ~{if defined(oOFormat) then ("--oformat " +  '"' + oOFormat + '"') else ""} \
      ~{if defined(headerHeader) then ("--header " +  '"' + headerHeader + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(memoryMemory) then ("--memory " +  '"' + memoryMemory + '"') else ""} \
      ~{true="--no-sort" false="" noNoSort} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="-X" false="" xX} \
      ~{true="--mmatch-notation" false="" mMMatchNotation} \
      ~{true="--sort" false="" sortSort} \
      ~{true="-D" false="" dD} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(maxMaxSeeds) then ("--maxseeds " +  '"' + maxMaxSeeds + '"') else ""} \
      ~{if defined(maxMaxHits) then ("--maxhits " +  '"' + maxMaxHits + '"') else ""} \
      ~{if defined(confConfDiff) then ("--confdiff " +  '"' + confConfDiff + '"') else ""} \
      ~{if defined(confConfAdapt) then ("--confadapt " +  '"' + confConfAdapt + '"') else ""} \
      ~{true="--error-rep" false="" errorErrorRep} \
      ~{true="--explore" false="" exploreExplore} \
      ~{true="--stop-on-first" false="" stopStopOnFirst} \
      ~{if defined(filterFilterOutput) then ("--filter-output " +  '"' + filterFilterOutput + '"') else ""} \
      ~{true="--ignore" false="" ignoreIgnore} \
      ~{if defined(selectivitySelectivity) then ("--selectivity " +  '"' + selectivitySelectivity + '"') else ""} \
      ~{true="-C" false="" cC} \
      ~{if defined(gapGapPenalty) then ("--gap-penalty " +  '"' + gapGapPenalty + '"') else ""} \
      ~{if defined(idxIdxSeedSize) then ("--idx-seedsize " +  '"' + idxIdxSeedSize + '"') else ""} \
      ~{if defined(idxIdxSlack) then ("--idx-slack " +  '"' + idxIdxSlack + '"') else ""} \
      ~{if defined(idxIdxOverflow) then ("--idx-overflow " +  '"' + idxIdxOverflow + '"') else ""} \
      ~{if defined(idxIdxOut) then ("--idx-out " +  '"' + idxIdxOut + '"') else ""} \
      ~{true="--no-prefetch" false="" noNoPrefetch} \
      ~{true="--bind-threads" false="" bindBindThreads}
  >>>
}