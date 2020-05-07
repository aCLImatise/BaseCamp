version 1.0

task VdbEncrypt.2.10.3 {
  input {
    Boolean forceForce
    File ngcNgc
    String logLogLevel
    Boolean verboseVerbose
    Boolean quietQuiet
    File optionOptionFile
    String? sourceSourceFile
    String? destinationDestinationFile
    String? destinationDestinationDirectory
    Directory? directoryDirectory
  }
  command <<<
    vdb-encrypt.2.10.3 \
      ~{sourceSourceFile} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(ngcNgc) then ("--ngc " +  '"' + ngcNgc + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(optionOptionFile) then ("--option-file " +  '"' + optionOptionFile + '"') else ""} \
      ~{destinationDestinationFile} \
      ~{destinationDestinationDirectory} \
      ~{directoryDirectory}
  >>>
}