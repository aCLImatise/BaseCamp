version 1.0

task TiptoftDatabaseDownloader {
  input {
    Boolean verboseVerbose
    String? outputOutputPrefix
  }
  command <<<
    tiptoft_database_downloader \
      ~{outputOutputPrefix} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}