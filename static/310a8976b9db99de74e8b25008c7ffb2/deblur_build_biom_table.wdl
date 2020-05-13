version 1.0

task DeblurBuildBiomTable {
  input {
    Int minMinReads
    String fileFileType
    Int logLogLevel
    File logLogFile
  }
  command <<<
    deblur build-biom-table \
      ~{if defined(minMinReads) then ("--min-reads " +  '"' + minMinReads + '"') else ""} \
      ~{if defined(fileFileType) then ("--file_type " +  '"' + fileFileType + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""}
  >>>
}