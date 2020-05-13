version 1.0

task MikadoPick {
  input {
    String fastFastA
    String startStartMethod
    Boolean shmShm
    String procsProcs
    String jsonJsonConf
    String scoringScoringFile
    Int iI
    Boolean noNoPad
    Boolean padPad
    String padPadMaxSplices
    String padPadMaxDistance
    String regionsRegions
    Boolean noNoCds
    String flankFlank
    Int maxMaxIntronLength
    Boolean noNoPurge
    Boolean cdsCdsOnly
    Boolean onlyOnlyReferenceUpdate
    Boolean excludeExcludeRetainedIntrons
    Boolean keepKeepDisruptedCds
    Boolean checkCheckReferences
    String sqliteSqliteDb
    String outputOutputDir
    Boolean singleSingle
    String modeMode
    String seedSeed
    String lociLociOut
    String prefixPrefix
    String sourceSource
    String logLog
    Boolean verboseVerbose
    Boolean noNoVerbose
    String logLogLevel
  }
  command <<<
    mikado pick \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(startStartMethod) then ("--start-method " +  '"' + startStartMethod + '"') else ""} \
      ~{true="--shm" false="" shmShm} \
      ~{if defined(procsProcs) then ("--procs " +  '"' + procsProcs + '"') else ""} \
      ~{if defined(jsonJsonConf) then ("--json-conf " +  '"' + jsonJsonConf + '"') else ""} \
      ~{if defined(scoringScoringFile) then ("--scoring-file " +  '"' + scoringScoringFile + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{true="--no-pad" false="" noNoPad} \
      ~{true="--pad" false="" padPad} \
      ~{if defined(padPadMaxSplices) then ("--pad-max-splices " +  '"' + padPadMaxSplices + '"') else ""} \
      ~{if defined(padPadMaxDistance) then ("--pad-max-distance " +  '"' + padPadMaxDistance + '"') else ""} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{true="--no_cds" false="" noNoCds} \
      ~{if defined(flankFlank) then ("--flank " +  '"' + flankFlank + '"') else ""} \
      ~{if defined(maxMaxIntronLength) then ("--max-intron-length " +  '"' + maxMaxIntronLength + '"') else ""} \
      ~{true="--no-purge" false="" noNoPurge} \
      ~{true="--cds-only" false="" cdsCdsOnly} \
      ~{true="--only-reference-update" false="" onlyOnlyReferenceUpdate} \
      ~{true="--exclude-retained-introns" false="" excludeExcludeRetainedIntrons} \
      ~{true="--keep-disrupted-cds" false="" keepKeepDisruptedCds} \
      ~{true="--check-references" false="" checkCheckReferences} \
      ~{if defined(sqliteSqliteDb) then ("--sqlite-db " +  '"' + sqliteSqliteDb + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--output-dir " +  '"' + outputOutputDir + '"') else ""} \
      ~{true="--single" false="" singleSingle} \
      ~{if defined(modeMode) then ("--mode " +  '"' + modeMode + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{if defined(lociLociOut) then ("--loci-out " +  '"' + lociLociOut + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(sourceSource) then ("--source " +  '"' + sourceSource + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--noverbose" false="" noNoVerbose} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""}
  >>>
}