version 1.0

task VdbDumpOrig.2.10.3 {
  input {
    Boolean idIdRange
    Boolean withoutWithoutSra
    Boolean excludeExclude
    Boolean booleanBoolean
    Boolean objObjVersion
    Boolean objObjTimestamp
    Boolean objObjType
    Boolean numNumElem
    Boolean numeleNumeleMsum
    Boolean bBLobbing
    Boolean physPhys
    Boolean readableReadable
    Boolean idxIdxReport
    Boolean idxIdxRange
    Boolean curCurCache
    Boolean outputOutputFile
    Boolean outputOutputPath
    Boolean gzipGzip
    Boolean bzip2Bzip2
    Boolean outputOutputBufferSize
    Boolean disableDisableMultithreading
    Boolean infoInfo
    Boolean spotSpotGroups
    Boolean mergeMergeRanges
    Boolean spreadSpread
    Boolean appendAppend
    File ngcNgc
    String logLogLevel
    Boolean verboseVerbose
    Boolean quietQuiet
    File optionOptionFile
  }
  command <<<
    vdb-dump-orig.2.10.3 \
      ~{true="--id_range" false="" idIdRange} \
      ~{true="--without_sra" false="" withoutWithoutSra} \
      ~{true="--exclude" false="" excludeExclude} \
      ~{true="--boolean" false="" booleanBoolean} \
      ~{true="--obj_version" false="" objObjVersion} \
      ~{true="--obj_timestamp" false="" objObjTimestamp} \
      ~{true="--obj_type" false="" objObjType} \
      ~{true="--numelem" false="" numNumElem} \
      ~{true="--numelemsum" false="" numeleNumeleMsum} \
      ~{true="--blobbing" false="" bBLobbing} \
      ~{true="--phys" false="" physPhys} \
      ~{true="--readable" false="" readableReadable} \
      ~{true="--idx-report" false="" idxIdxReport} \
      ~{true="--idx-range" false="" idxIdxRange} \
      ~{true="--cur-cache" false="" curCurCache} \
      ~{true="--output-file" false="" outputOutputFile} \
      ~{true="--output-path" false="" outputOutputPath} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{true="--bzip2" false="" bzip2Bzip2} \
      ~{true="--output-buffer-size" false="" outputOutputBufferSize} \
      ~{true="--disable-multithreading" false="" disableDisableMultithreading} \
      ~{true="--info" false="" infoInfo} \
      ~{true="--spotgroups" false="" spotSpotGroups} \
      ~{true="--merge-ranges" false="" mergeMergeRanges} \
      ~{true="--spread" false="" spreadSpread} \
      ~{true="--append" false="" appendAppend} \
      ~{if defined(ngcNgc) then ("--ngc " +  '"' + ngcNgc + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(optionOptionFile) then ("--option-file " +  '"' + optionOptionFile + '"') else ""}
  >>>
}