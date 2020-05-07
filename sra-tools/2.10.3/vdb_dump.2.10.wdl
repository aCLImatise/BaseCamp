version 1.0

task VdbDump.2.10.3 {
  input {
    Boolean rowRowIdOn
    Boolean colnameColnameOff
    Boolean inInHex
    Boolean schemaSchemaDump
    Boolean tableTableEnum
    Boolean columnColumnEnum
    Boolean columnColumnEnumShort
    Boolean idIdRange
    Boolean withoutWithoutSra
    Boolean objObjVersion
    Boolean objObjTimestamp
    Boolean objObjType
    Boolean numNumElem
    Boolean numeleNumeleMsum
    Boolean bBLobbing
    Boolean physPhys
    Boolean readableReadable
    Boolean idxIdxReport
    Boolean gzipGzip
    Boolean bzip2Bzip2
    Boolean infoInfo
    Boolean spotSpotGroups
    Boolean mergeMergeRanges
    Boolean spreadSpread
    Boolean appendAppend
    String lineLineFeed
    Int maxMaxLength
    String indentIndentWith
    String tableTable
    String rowsRows
    String columnsColumns
    File schemaSchema
    String dnaDnaBases
    String formatFormat
    String excludeExclude
    String booleanBoolean
    String idxIdxRange
    Int curCurCache
    File outputOutputFile
    File outputOutputPath
    Int outputOutputBufferSize
    File ngcNgc
    File permPerm
    String locationLocation
    File cartCart
    Boolean disableDisableMultithreading
    String logLogLevel
    File optionOptionFile
  }
  command <<<
    vdb-dump.2.10.3 \
      ~{true="--row_id_on" false="" rowRowIdOn} \
      ~{true="--colname_off" false="" colnameColnameOff} \
      ~{true="--in_hex" false="" inInHex} \
      ~{true="--schema_dump" false="" schemaSchemaDump} \
      ~{true="--table_enum" false="" tableTableEnum} \
      ~{true="--column_enum" false="" columnColumnEnum} \
      ~{true="--column_enum_short" false="" columnColumnEnumShort} \
      ~{true="--id_range" false="" idIdRange} \
      ~{true="--without_sra" false="" withoutWithoutSra} \
      ~{true="--obj_version" false="" objObjVersion} \
      ~{true="--obj_timestamp" false="" objObjTimestamp} \
      ~{true="--obj_type" false="" objObjType} \
      ~{true="--numelem" false="" numNumElem} \
      ~{true="--numelemsum" false="" numeleNumeleMsum} \
      ~{true="--blobbing" false="" bBLobbing} \
      ~{true="--phys" false="" physPhys} \
      ~{true="--readable" false="" readableReadable} \
      ~{true="--idx-report" false="" idxIdxReport} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{true="--bzip2" false="" bzip2Bzip2} \
      ~{true="--info" false="" infoInfo} \
      ~{true="--spotgroups" false="" spotSpotGroups} \
      ~{true="--merge-ranges" false="" mergeMergeRanges} \
      ~{true="--spread" false="" spreadSpread} \
      ~{true="--append" false="" appendAppend} \
      ~{if defined(lineLineFeed) then ("--line_feed " +  '"' + lineLineFeed + '"') else ""} \
      ~{if defined(maxMaxLength) then ("--max_length " +  '"' + maxMaxLength + '"') else ""} \
      ~{if defined(indentIndentWith) then ("--indent_with " +  '"' + indentIndentWith + '"') else ""} \
      ~{if defined(tableTable) then ("--table " +  '"' + tableTable + '"') else ""} \
      ~{if defined(rowsRows) then ("--rows " +  '"' + rowsRows + '"') else ""} \
      ~{if defined(columnsColumns) then ("--columns " +  '"' + columnsColumns + '"') else ""} \
      ~{if defined(schemaSchema) then ("--schema " +  '"' + schemaSchema + '"') else ""} \
      ~{if defined(dnaDnaBases) then ("--dna_bases " +  '"' + dnaDnaBases + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(booleanBoolean) then ("--boolean " +  '"' + booleanBoolean + '"') else ""} \
      ~{if defined(idxIdxRange) then ("--idx-range " +  '"' + idxIdxRange + '"') else ""} \
      ~{if defined(curCurCache) then ("--cur-cache " +  '"' + curCurCache + '"') else ""} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(outputOutputPath) then ("--output-path " +  '"' + outputOutputPath + '"') else ""} \
      ~{if defined(outputOutputBufferSize) then ("--output-buffer-size " +  '"' + outputOutputBufferSize + '"') else ""} \
      ~{if defined(ngcNgc) then ("--ngc " +  '"' + ngcNgc + '"') else ""} \
      ~{if defined(permPerm) then ("--perm " +  '"' + permPerm + '"') else ""} \
      ~{if defined(locationLocation) then ("--location " +  '"' + locationLocation + '"') else ""} \
      ~{if defined(cartCart) then ("--cart " +  '"' + cartCart + '"') else ""} \
      ~{true="--disable-multithreading" false="" disableDisableMultithreading} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(optionOptionFile) then ("--option-file " +  '"' + optionOptionFile + '"') else ""}
  >>>
}