version 1.0

task Kdbmeta.2.10.3 {
  input {
    String tableTable
    Boolean unsignedUnsigned
    Boolean readReadOnly
    String outputOutput
    File ngcNgc
    String logLogLevel
    Boolean verboseVerbose
    Boolean quietQuiet
    File optionOptionFile
    File? pathPathToDatabase
    File? pathPathToTable
    File? pathPathToColumn
    String? accessionAccession
  }
  command <<<
    kdbmeta.2.10.3 \
      ~{pathPathToDatabase} \
      ~{if defined(tableTable) then ("--table " +  '"' + tableTable + '"') else ""} \
      ~{true="--unsigned" false="" unsignedUnsigned} \
      ~{true="--read-only" false="" readReadOnly} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(ngcNgc) then ("--ngc " +  '"' + ngcNgc + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(optionOptionFile) then ("--option-file " +  '"' + optionOptionFile + '"') else ""} \
      ~{pathPathToTable} \
      ~{pathPathToColumn} \
      ~{accessionAccession}
  >>>
}