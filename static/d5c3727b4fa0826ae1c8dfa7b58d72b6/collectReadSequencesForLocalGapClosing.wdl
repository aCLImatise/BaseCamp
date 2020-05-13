version 1.0

task CollectReadSequencesForLocalGapClosing {
  input {
    File fauxFauxReadsFile
    File fauxFauxReadMatchesToKunisFile
    File readReadMatchesToKunisFile
    File readsReadsFile
    File dirDirForGaps
    Int numNumJoinsPerDirectory
    String maxMaxReadsInMemory
    String? cmdlineCmdlineParse
  }
  command <<<
    collectReadSequencesForLocalGapClosing \
      ~{cmdlineCmdlineParse} \
      ~{if defined(fauxFauxReadsFile) then ("--faux-reads-file " +  '"' + fauxFauxReadsFile + '"') else ""} \
      ~{if defined(fauxFauxReadMatchesToKunisFile) then ("--faux-read-matches-to-kunis-file " +  '"' + fauxFauxReadMatchesToKunisFile + '"') else ""} \
      ~{if defined(readReadMatchesToKunisFile) then ("--read-matches-to-kunis-file " +  '"' + readReadMatchesToKunisFile + '"') else ""} \
      ~{if defined(readsReadsFile) then ("--reads-file " +  '"' + readsReadsFile + '"') else ""} \
      ~{if defined(dirDirForGaps) then ("--dir-for-gaps " +  '"' + dirDirForGaps + '"') else ""} \
      ~{if defined(numNumJoinsPerDirectory) then ("--num-joins-per-directory " +  '"' + numNumJoinsPerDirectory + '"') else ""} \
      ~{if defined(maxMaxReadsInMemory) then ("--max-reads-in-memory " +  '"' + maxMaxReadsInMemory + '"') else ""}
  >>>
}