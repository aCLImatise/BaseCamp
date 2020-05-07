version 1.0

task Kar.2.10.3 {
  input {
    String createCreate
    String extractExtract
    String testTest
    Directory directoryDirectory
    Boolean forceForce
    Boolean longLongList
    String logLogLevel
    Boolean verboseVerbose
    Boolean quietQuiet
    File optionOptionFile
    Boolean stdoutStdout
    Boolean md5Md5
  }
  command <<<
    kar.2.10.3 \
      ~{if defined(createCreate) then ("--create " +  '"' + createCreate + '"') else ""} \
      ~{if defined(extractExtract) then ("--extract " +  '"' + extractExtract + '"') else ""} \
      ~{if defined(testTest) then ("--test " +  '"' + testTest + '"') else ""} \
      ~{if defined(directoryDirectory) then ("--directory " +  '"' + directoryDirectory + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{true="--long-list" false="" longLongList} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(optionOptionFile) then ("--option-file " +  '"' + optionOptionFile + '"') else ""} \
      ~{true="--stdout" false="" stdoutStdout} \
      ~{true="--md5" false="" md5Md5}
  >>>
}