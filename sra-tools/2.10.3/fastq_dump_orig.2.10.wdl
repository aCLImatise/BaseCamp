version 1.0

task FastqDumpOrig.2.10.3 {
  input {
    String accessionAccession
    String tableTable
    Boolean splitSplitSpot
    String minMinSpotId
    String maxMaxSpotId
    Boolean spotSpotGroups
    Boolean clipClip
    String minMinReadLen
    Boolean readReadFilter
    Boolean qualQualFilter
    Boolean qualQualFilter1
    Boolean alignedAligned
    Boolean unalignedUnaligned
    Boolean alignedAlignedRegion
    Boolean mateMatePairDistance
    Boolean skipSkipTechnical
    File outdirOutdir
    Boolean stdoutStdout
    Boolean gzipGzip
    Boolean bzip2Bzip2
    Boolean splitSplitFiles
    Boolean splitSplit3
    Boolean spotSpotGroup
    Boolean readReadFilter
    Boolean groupGroupInDirs
    Boolean keepKeepEmptyFiles
    Boolean dumpDumpCs
    Boolean dumpDumpBase
    Int offsetOffset
    Boolean fastFastA
    Boolean suppressSuppressQualForCsKey
    Boolean origOrigFmt
    Boolean readReadIds
    Boolean hHElicos
    String defDefLineSeq
    String defDefLineQual
    File ngcNgc
    Boolean disableDisableMultithreading
    String logLogLevel
    Boolean verboseVerbose
    Boolean ncbiNcbiErrorReport
    Boolean legacyLegacyReport
  }
  command <<<
    fastq-dump-orig.2.10.3 \
      ~{if defined(accessionAccession) then ("--accession " +  '"' + accessionAccession + '"') else ""} \
      ~{if defined(tableTable) then ("--table " +  '"' + tableTable + '"') else ""} \
      ~{true="--split-spot" false="" splitSplitSpot} \
      ~{if defined(minMinSpotId) then ("--minSpotId " +  '"' + minMinSpotId + '"') else ""} \
      ~{if defined(maxMaxSpotId) then ("--maxSpotId " +  '"' + maxMaxSpotId + '"') else ""} \
      ~{true="--spot-groups" false="" spotSpotGroups} \
      ~{true="--clip" false="" clipClip} \
      ~{if defined(minMinReadLen) then ("--minReadLen " +  '"' + minMinReadLen + '"') else ""} \
      ~{true="--read-filter" false="" readReadFilter} \
      ~{true="--qual-filter" false="" qualQualFilter} \
      ~{true="--qual-filter-1" false="" qualQualFilter1} \
      ~{true="--aligned" false="" alignedAligned} \
      ~{true="--unaligned" false="" unalignedUnaligned} \
      ~{true="--aligned-region" false="" alignedAlignedRegion} \
      ~{true="--matepair-distance" false="" mateMatePairDistance} \
      ~{true="--skip-technical" false="" skipSkipTechnical} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{true="--stdout" false="" stdoutStdout} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{true="--bzip2" false="" bzip2Bzip2} \
      ~{true="--split-files" false="" splitSplitFiles} \
      ~{true="--split-3" false="" splitSplit3} \
      ~{true="--spot-group" false="" spotSpotGroup} \
      ~{true="--read-filter" false="" readReadFilter} \
      ~{true="--group-in-dirs" false="" groupGroupInDirs} \
      ~{true="--keep-empty-files" false="" keepKeepEmptyFiles} \
      ~{true="--dumpcs" false="" dumpDumpCs} \
      ~{true="--dumpbase" false="" dumpDumpBase} \
      ~{if defined(offsetOffset) then ("--offset " +  '"' + offsetOffset + '"') else ""} \
      ~{true="--fasta" false="" fastFastA} \
      ~{true="--suppress-qual-for-cskey" false="" suppressSuppressQualForCsKey} \
      ~{true="--origfmt" false="" origOrigFmt} \
      ~{true="--readids" false="" readReadIds} \
      ~{true="--helicos" false="" hHElicos} \
      ~{if defined(defDefLineSeq) then ("--defline-seq " +  '"' + defDefLineSeq + '"') else ""} \
      ~{if defined(defDefLineQual) then ("--defline-qual " +  '"' + defDefLineQual + '"') else ""} \
      ~{if defined(ngcNgc) then ("--ngc " +  '"' + ngcNgc + '"') else ""} \
      ~{true="--disable-multithreading" false="" disableDisableMultithreading} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--ncbi_error_report" false="" ncbiNcbiErrorReport} \
      ~{true="--legacy-report" false="" legacyLegacyReport}
  >>>
}