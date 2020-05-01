version 1.0

task VdbDecrypt.2 {
  input {
    Boolean forceForce
    Boolean decryptDecryptSraFiles
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
    vdb-decrypt.2 \
      ~{sourceSourceFile} \
      ~{true="--force" false="" forceForce} \
      ~{true="--decrypt-sra-files" false="" decryptDecryptSraFiles} \
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