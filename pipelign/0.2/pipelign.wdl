version 1.0

task Pipelign {
  input {
    String inInFile
    String outfileOutfile
    String lentLentHr
    String alphabetAlphabet
    Boolean keepKeepOrphans
    Boolean keepKeepBadSeqs
    Boolean mMZip
    String simperSimper
    String runRun
    String mergeMerge
    String threadThread
    String miteMiteRateLong
    String miterMiterAtEmerge
    String outdirOutdir
    Boolean clearClearExistingDirectory
    String amAmBigPer
    Boolean nN
    Boolean excludeExcludeClusters
  }
  command <<<
    pipelign \
      ~{if defined(inInFile) then ("--inFile " +  '"' + inInFile + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outFile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(lentLentHr) then ("--lenThr " +  '"' + lentLentHr + '"') else ""} \
      ~{if defined(alphabetAlphabet) then ("--alphabet " +  '"' + alphabetAlphabet + '"') else ""} \
      ~{true="--keepOrphans" false="" keepKeepOrphans} \
      ~{true="--keepBadSeqs" false="" keepKeepBadSeqs} \
      ~{true="--mZip" false="" mMZip} \
      ~{if defined(simperSimper) then ("--simPer " +  '"' + simperSimper + '"') else ""} \
      ~{if defined(runRun) then ("--run " +  '"' + runRun + '"') else ""} \
      ~{if defined(mergeMerge) then ("--merge " +  '"' + mergeMerge + '"') else ""} \
      ~{if defined(threadThread) then ("--thread " +  '"' + threadThread + '"') else ""} \
      ~{if defined(miteMiteRateLong) then ("--mIterateLong " +  '"' + miteMiteRateLong + '"') else ""} \
      ~{if defined(miterMiterAtEmerge) then ("--mIterateMerge " +  '"' + miterMiterAtEmerge + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outDir " +  '"' + outdirOutdir + '"') else ""} \
      ~{true="--clearExistingDirectory" false="" clearClearExistingDirectory} \
      ~{if defined(amAmBigPer) then ("--ambigPer " +  '"' + amAmBigPer + '"') else ""} \
      ~{true="-n" false="" nN} \
      ~{true="--excludeClusters" false="" excludeExcludeClusters}
  >>>
}