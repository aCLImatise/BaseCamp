version 1.0

task SffDump.2 {
  input {
    String accessionAccession
    File outdirOutdir
    Boolean stdoutStdout
    File ngcNgc
    String minMinSpotId
    String maxMaxSpotId
    Boolean spotSpotGroup
    Boolean spotSpotGroups
    Boolean readReadFilter
    Boolean groupGroupInDirs
    Boolean keepKeepEmptyFiles
    String tableTable
    Boolean disableDisableMultithreading
    String logLogLevel
    Boolean verboseVerbose
    Boolean ncbiNcbiErrorReport
    Boolean legacyLegacyReport
  }
  command <<<
    sff-dump.2 \
      ~{if defined(accessionAccession) then ("--accession " +  '"' + accessionAccession + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{true="--stdout" false="" stdoutStdout} \
      ~{if defined(ngcNgc) then ("--ngc " +  '"' + ngcNgc + '"') else ""} \
      ~{if defined(minMinSpotId) then ("--minSpotId " +  '"' + minMinSpotId + '"') else ""} \
      ~{if defined(maxMaxSpotId) then ("--maxSpotId " +  '"' + maxMaxSpotId + '"') else ""} \
      ~{true="--spot-group" false="" spotSpotGroup} \
      ~{true="--spot-groups" false="" spotSpotGroups} \
      ~{true="--read-filter" false="" readReadFilter} \
      ~{true="--group-in-dirs" false="" groupGroupInDirs} \
      ~{true="--keep-empty-files" false="" keepKeepEmptyFiles} \
      ~{if defined(tableTable) then ("--table " +  '"' + tableTable + '"') else ""} \
      ~{true="--disable-multithreading" false="" disableDisableMultithreading} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--ncbi_error_report" false="" ncbiNcbiErrorReport} \
      ~{true="--legacy-report" false="" legacyLegacyReport}
  >>>
}