version 1.0

task VdbCopy.2.10.3 {
  input {
    String tableTable
    String rowsRows
    String schemaSchema
    Boolean withoutWithoutAccession
    Boolean ignoreIgnoreReject
    Boolean ignoreIgnoreRedact
    Boolean kfgKfgPath
    Boolean showShowMatching
    Boolean showShowProgress
    String ignoreIgnoreIncompatibleColumns
    Boolean reReIndex
    Boolean showShowRedact
    Boolean excludeExcludeColumns
    Boolean showShowMeta
    Boolean forceForce
    Boolean unlockUnlock
    Boolean md5modeMd5mode
    Boolean blobBlobChecksum
    String logLogLevel
    Boolean verboseVerbose
    Boolean quietQuiet
    File optionOptionFile
    String? srcSrcPath
    String? dstDstPath
  }
  command <<<
    vdb-copy.2.10.3 \
      ~{srcSrcPath} \
      ~{if defined(tableTable) then ("--table " +  '"' + tableTable + '"') else ""} \
      ~{if defined(rowsRows) then ("--rows " +  '"' + rowsRows + '"') else ""} \
      ~{if defined(schemaSchema) then ("--schema " +  '"' + schemaSchema + '"') else ""} \
      ~{true="--without_accession" false="" withoutWithoutAccession} \
      ~{true="--ignore_reject" false="" ignoreIgnoreReject} \
      ~{true="--ignore_redact" false="" ignoreIgnoreRedact} \
      ~{true="--kfg_path" false="" kfgKfgPath} \
      ~{true="--show_matching" false="" showShowMatching} \
      ~{true="--show_progress" false="" showShowProgress} \
      ~{if defined(ignoreIgnoreIncompatibleColumns) then ("--ignore_incompatible_columns " +  '"' + ignoreIgnoreIncompatibleColumns + '"') else ""} \
      ~{true="--reindex" false="" reReIndex} \
      ~{true="--show_redact" false="" showShowRedact} \
      ~{true="--exclude_columns" false="" excludeExcludeColumns} \
      ~{true="--show_meta" false="" showShowMeta} \
      ~{true="--force" false="" forceForce} \
      ~{true="--unlock" false="" unlockUnlock} \
      ~{true="--md5mode" false="" md5modeMd5mode} \
      ~{true="--blob_checksum" false="" blobBlobChecksum} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(optionOptionFile) then ("--option-file " +  '"' + optionOptionFile + '"') else ""} \
      ~{dstDstPath}
  >>>
}