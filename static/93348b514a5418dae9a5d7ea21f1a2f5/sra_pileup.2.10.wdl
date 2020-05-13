version 1.0

task SraPileup.2.10.3 {
  input {
    Boolean alignedAlignedRegion
    String outfileOutfile
    String tableTable
    Boolean bzip2Bzip2
    Boolean gzipGzip
    Boolean timingTiming
    String minMinMapq
    Boolean duplicatesDuplicates
    Boolean spotSpotGroups
    Boolean depthDepthPerSpotGroup
    Boolean seqnameSeqname
    String minMinMismatch
    String mergeMergeDist
    Boolean noNoQual
    String functionFunction
    File ngcNgc
    File permPerm
    String locationLocation
    File cartCart
    Boolean disableDisableMultithreading
    String logLogLevel
    File optionOptionFile
  }
  command <<<
    sra-pileup.2.10.3 \
      ~{true="--aligned-region" false="" alignedAlignedRegion} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(tableTable) then ("--table " +  '"' + tableTable + '"') else ""} \
      ~{true="--bzip2" false="" bzip2Bzip2} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{true="--timing" false="" timingTiming} \
      ~{if defined(minMinMapq) then ("--minmapq " +  '"' + minMinMapq + '"') else ""} \
      ~{true="--duplicates" false="" duplicatesDuplicates} \
      ~{true="--spotgroups" false="" spotSpotGroups} \
      ~{true="--depth-per-spotgroup" false="" depthDepthPerSpotGroup} \
      ~{true="--seqname" false="" seqnameSeqname} \
      ~{if defined(minMinMismatch) then ("--minmismatch " +  '"' + minMinMismatch + '"') else ""} \
      ~{if defined(mergeMergeDist) then ("--merge-dist " +  '"' + mergeMergeDist + '"') else ""} \
      ~{true="--noqual" false="" noNoQual} \
      ~{if defined(functionFunction) then ("--function " +  '"' + functionFunction + '"') else ""} \
      ~{if defined(ngcNgc) then ("--ngc " +  '"' + ngcNgc + '"') else ""} \
      ~{if defined(permPerm) then ("--perm " +  '"' + permPerm + '"') else ""} \
      ~{if defined(locationLocation) then ("--location " +  '"' + locationLocation + '"') else ""} \
      ~{if defined(cartCart) then ("--cart " +  '"' + cartCart + '"') else ""} \
      ~{true="--disable-multithreading" false="" disableDisableMultithreading} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(optionOptionFile) then ("--option-file " +  '"' + optionOptionFile + '"') else ""}
  >>>
}