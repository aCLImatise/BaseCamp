version 1.0

task IlluminaDump.2.10.3 {
  input {
    String accessionAccession
    File outdirOutdir
    Boolean stdoutStdout
    File ngcNgc
    Boolean gzipGzip
    Boolean bzip2Bzip2
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
    Boolean qual1Qual1
    Boolean qual4Qual4
    Boolean intensityIntensity
    Boolean noiseNoise
    Boolean signalSignal
    Boolean qQSeq
  }
  command <<<
    illumina-dump.2.10.3 \
      ~{if defined(accessionAccession) then ("--accession " +  '"' + accessionAccession + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{true="--stdout" false="" stdoutStdout} \
      ~{if defined(ngcNgc) then ("--ngc " +  '"' + ngcNgc + '"') else ""} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{true="--bzip2" false="" bzip2Bzip2} \
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
      ~{true="--legacy-report" false="" legacyLegacyReport} \
      ~{true="--qual1" false="" qual1Qual1} \
      ~{true="--qual4" false="" qual4Qual4} \
      ~{true="--intensity" false="" intensityIntensity} \
      ~{true="--noise" false="" noiseNoise} \
      ~{true="--signal" false="" signalSignal} \
      ~{true="--qseq" false="" qQSeq}
  >>>
}