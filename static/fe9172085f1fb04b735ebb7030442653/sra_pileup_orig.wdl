version 1.0

task SraPileupOrig {
  input {
    Boolean alignedAlignedRegion
    String outfileOutfile
    String tableTable
    Boolean bzip2Bzip2
    Boolean gzipGzip
    Boolean disableDisableMultithreading
    Boolean timingTiming
    File ngcNgc
    Int minMinMapq
    String duplicatesDuplicates
    Boolean spotSpotGroups
    Boolean depthDepthPerSpotGroup
    Boolean seqnameSeqname
    Boolean minMinMismatch
    Boolean mergeMergeDist
    Boolean noNoQual
    String functionFunction
    String functionFunction
    String functionFunction
    String functionFunction
    String functionFunction
    String functionFunction
    String functionFunction
    String functionFunction
    String functionFunction
    String logLogLevel
    Boolean verboseVerbose
    Boolean quietQuiet
    File optionOptionFile
    File? pathPath
  }
  command <<<
    sra-pileup-orig \
      ~{pathPath} \
      ~{true="--aligned-region" false="" alignedAlignedRegion} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(tableTable) then ("--table " +  '"' + tableTable + '"') else ""} \
      ~{true="--bzip2" false="" bzip2Bzip2} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{true="--disable-multithreading" false="" disableDisableMultithreading} \
      ~{true="--timing" false="" timingTiming} \
      ~{if defined(ngcNgc) then ("--ngc " +  '"' + ngcNgc + '"') else ""} \
      ~{if defined(minMinMapq) then ("--minmapq " +  '"' + minMinMapq + '"') else ""} \
      ~{if defined(duplicatesDuplicates) then ("--duplicates " +  '"' + duplicatesDuplicates + '"') else ""} \
      ~{true="--spotgroups" false="" spotSpotGroups} \
      ~{true="--depth-per-spotgroup" false="" depthDepthPerSpotGroup} \
      ~{true="--seqname" false="" seqnameSeqname} \
      ~{true="--minmismatch" false="" minMinMismatch} \
      ~{true="--merge-dist" false="" mergeMergeDist} \
      ~{true="--noqual" false="" noNoQual} \
      ~{if defined(functionFunction) then ("--function " +  '"' + functionFunction + '"') else ""} \
      ~{if defined(functionFunction) then ("--function " +  '"' + functionFunction + '"') else ""} \
      ~{if defined(functionFunction) then ("--function " +  '"' + functionFunction + '"') else ""} \
      ~{if defined(functionFunction) then ("--function " +  '"' + functionFunction + '"') else ""} \
      ~{if defined(functionFunction) then ("--function " +  '"' + functionFunction + '"') else ""} \
      ~{if defined(functionFunction) then ("--function " +  '"' + functionFunction + '"') else ""} \
      ~{if defined(functionFunction) then ("--function " +  '"' + functionFunction + '"') else ""} \
      ~{if defined(functionFunction) then ("--function " +  '"' + functionFunction + '"') else ""} \
      ~{if defined(functionFunction) then ("--function " +  '"' + functionFunction + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(optionOptionFile) then ("--option-file " +  '"' + optionOptionFile + '"') else ""}
  >>>
}