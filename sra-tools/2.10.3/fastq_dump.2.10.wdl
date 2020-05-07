version 1.0

task FastqDump.2.10.3 {
  input {
    String accessionAccession
    String tableTable
    Boolean splitSplitSpot
    String minMinSpotId
    String maxMaxSpotId
    Boolean spotSpotGroups
    Boolean clipClip
    String minMinReadLen
    String readReadFilter
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
    Boolean splitSplitE
    Boolean spotSpotGroup
    Boolean groupGroupInDirs
    Boolean keepKeepEmptyFiles
    String dumpDumpCs
    Boolean dumpDumpBase
    Boolean offsetOffset
    String fastFastA
    Boolean suppressSuppressQualForCsKey
    Boolean origOrigFmt
    Boolean readReadIds
    Boolean hHElicos
    String defDefLineSeq
    String defDefLineQual
    File ngcNgc
    File permPerm
    String locationLocation
    File cartCart
    Boolean disableDisableMultithreading
    String logLogLevel
    File optionOptionFile
  }
  command <<<
    fastq-dump.2.10.3 \
      ~{if defined(accessionAccession) then ("--accession " +  '"' + accessionAccession + '"') else ""} \
      ~{if defined(tableTable) then ("--table " +  '"' + tableTable + '"') else ""} \
      ~{true="--split-spot" false="" splitSplitSpot} \
      ~{if defined(minMinSpotId) then ("--minSpotId " +  '"' + minMinSpotId + '"') else ""} \
      ~{if defined(maxMaxSpotId) then ("--maxSpotId " +  '"' + maxMaxSpotId + '"') else ""} \
      ~{true="--spot-groups" false="" spotSpotGroups} \
      ~{true="--clip" false="" clipClip} \
      ~{if defined(minMinReadLen) then ("--minReadLen " +  '"' + minMinReadLen + '"') else ""} \
      ~{if defined(readReadFilter) then ("--read-filter " +  '"' + readReadFilter + '"') else ""} \
      ~{true="--qual-filter" false="" qualQualFilter} \
      ~{true="--qual-filter-1" false="" qualQualFilter1} \
      ~{true="--aligned" false="" alignedAligned} \
      ~{true="--unaligned" false="" unalignedUnaligned} \
      ~{true="--aligned-region" false="" alignedAlignedRegion} \
      ~{true="--matepair_distance" false="" mateMatePairDistance} \
      ~{true="--skip-technical" false="" skipSkipTechnical} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{true="--stdout" false="" stdoutStdout} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{true="--bzip2" false="" bzip2Bzip2} \
      ~{true="--split-files" false="" splitSplitFiles} \
      ~{true="--split-e" false="" splitSplitE} \
      ~{true="--spot-group" false="" spotSpotGroup} \
      ~{true="--group-in-dirs" false="" groupGroupInDirs} \
      ~{true="--keep-empty-files" false="" keepKeepEmptyFiles} \
      ~{if defined(dumpDumpCs) then ("--dumpcs " +  '"' + dumpDumpCs + '"') else ""} \
      ~{true="--dumpbase" false="" dumpDumpBase} \
      ~{true="--offset" false="" offsetOffset} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{true="--suppress-qual-for-cskey" false="" suppressSuppressQualForCsKey} \
      ~{true="--origfmt" false="" origOrigFmt} \
      ~{true="--readids" false="" readReadIds} \
      ~{true="--helicos" false="" hHElicos} \
      ~{if defined(defDefLineSeq) then ("--defline-seq " +  '"' + defDefLineSeq + '"') else ""} \
      ~{if defined(defDefLineQual) then ("--defline-qual " +  '"' + defDefLineQual + '"') else ""} \
      ~{if defined(ngcNgc) then ("--ngc " +  '"' + ngcNgc + '"') else ""} \
      ~{if defined(permPerm) then ("--perm " +  '"' + permPerm + '"') else ""} \
      ~{if defined(locationLocation) then ("--location " +  '"' + locationLocation + '"') else ""} \
      ~{if defined(cartCart) then ("--cart " +  '"' + cartCart + '"') else ""} \
      ~{true="--disable-multithreading" false="" disableDisableMultithreading} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(optionOptionFile) then ("--option-file " +  '"' + optionOptionFile + '"') else ""}
  >>>
}