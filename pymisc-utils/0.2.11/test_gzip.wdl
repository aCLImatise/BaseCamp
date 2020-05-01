version 1.0

task TestGzip.py {
  input {
    String logLogFile
    Boolean logLogStdout
    Boolean noNoLogStderr
    String loggingLoggingLevel
    String fileFileLoggingLevel
    String stdoutStdoutLoggingLevel
    String stderrStderrLoggingLevel
    Int? sizeSize
  }
  command <<<
    test_gzip.py \
      ~{sizeSize} \
      ~{if defined(logLogFile) then ("--log-file " +  '"' + logLogFile + '"') else ""} \
      ~{true="--log-stdout" false="" logLogStdout} \
      ~{true="--no-log-stderr" false="" noNoLogStderr} \
      ~{if defined(loggingLoggingLevel) then ("--logging-level " +  '"' + loggingLoggingLevel + '"') else ""} \
      ~{if defined(fileFileLoggingLevel) then ("--file-logging-level " +  '"' + fileFileLoggingLevel + '"') else ""} \
      ~{if defined(stdoutStdoutLoggingLevel) then ("--stdout-logging-level " +  '"' + stdoutStdoutLoggingLevel + '"') else ""} \
      ~{if defined(stderrStderrLoggingLevel) then ("--stderr-logging-level " +  '"' + stderrStderrLoggingLevel + '"') else ""}
  >>>
}