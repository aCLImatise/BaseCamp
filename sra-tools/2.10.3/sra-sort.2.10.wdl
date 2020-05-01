version 1.0

task SraSort.2.10.3 {
  input {
    Boolean ignoreIgnoreFailure
    Boolean forceForce
    String memMemLimit
    String mapMapFileBSize
    String maxMaxIdxIds
    String maxMaxRefIdxIds
    String maxMaxLargeIdxIds
    File tempdirTempdir
    File mmapMmapDir
    Boolean unsortedUnsortedOldNew
    Boolean columnColumnMd5
    Boolean noNoColumnChecksum
    Boolean blobBlobCrc32
    Boolean blobBlobMd5
    Boolean noNoBlobChecksum
    String logLogLevel
    Boolean verboseVerbose
    Boolean quietQuiet
    File optionOptionFile
    String? srcSrcObject
    String? dstDstObject
  }
  command <<<
    sra-sort.2.10.3 \
      ~{srcSrcObject} \
      ~{true="--ignore-failure" false="" ignoreIgnoreFailure} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(memMemLimit) then ("--mem-limit " +  '"' + memMemLimit + '"') else ""} \
      ~{if defined(mapMapFileBSize) then ("--map-file-bsize " +  '"' + mapMapFileBSize + '"') else ""} \
      ~{if defined(maxMaxIdxIds) then ("--max-idx-ids " +  '"' + maxMaxIdxIds + '"') else ""} \
      ~{if defined(maxMaxRefIdxIds) then ("--max-ref-idx-ids " +  '"' + maxMaxRefIdxIds + '"') else ""} \
      ~{if defined(maxMaxLargeIdxIds) then ("--max-large-idx-ids " +  '"' + maxMaxLargeIdxIds + '"') else ""} \
      ~{if defined(tempdirTempdir) then ("--tempdir " +  '"' + tempdirTempdir + '"') else ""} \
      ~{if defined(mmapMmapDir) then ("--mmapdir " +  '"' + mmapMmapDir + '"') else ""} \
      ~{true="--unsorted-old-new" false="" unsortedUnsortedOldNew} \
      ~{true="--column-md5" false="" columnColumnMd5} \
      ~{true="--no-column-checksum" false="" noNoColumnChecksum} \
      ~{true="--blob-crc32" false="" blobBlobCrc32} \
      ~{true="--blob-md5" false="" blobBlobMd5} \
      ~{true="--no-blob-checksum" false="" noNoBlobChecksum} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(optionOptionFile) then ("--option-file " +  '"' + optionOptionFile + '"') else ""} \
      ~{dstDstObject}
  >>>
}