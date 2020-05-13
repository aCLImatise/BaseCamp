version 1.0

task VdbValidate.2 {
  input {
    Boolean blobBlobCrc
    Boolean referentialReferentialIntegrity
    Boolean consistencyConsistencyCheck
    Boolean exhaustiveExhaustive
    Boolean sdcSdc
    Boolean sdcSdc
    Boolean sdcSdc
    File ngcNgc
    String logLogLevel
    Boolean verboseVerbose
    Boolean quietQuiet
    File optionOptionFile
  }
  command <<<
    vdb-validate.2 \
      ~{true="--BLOB-CRC" false="" blobBlobCrc} \
      ~{true="--REFERENTIAL-INTEGRITY" false="" referentialReferentialIntegrity} \
      ~{true="--CONSISTENCY-CHECK" false="" consistencyConsistencyCheck} \
      ~{true="--exhaustive" false="" exhaustiveExhaustive} \
      ~{true="--sdc" false="" sdcSdc} \
      ~{true="--sdc" false="" sdcSdc} \
      ~{true="--sdc" false="" sdcSdc} \
      ~{if defined(ngcNgc) then ("--ngc " +  '"' + ngcNgc + '"') else ""} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(optionOptionFile) then ("--option-file " +  '"' + optionOptionFile + '"') else ""}
  >>>
}