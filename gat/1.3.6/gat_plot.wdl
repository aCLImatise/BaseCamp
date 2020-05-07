version 1.0

task GatPlot.py {
  input {
    String timeTimeIt
    String timeTimeItName
    Boolean timeTimeItHeader
    String outputOutputFilenamePattern
    Boolean forceForceOutput
    File stdinStdin
    File logLog
    File errorError
    File stdoutStdout
  }
  command <<<
    gat-plot.py \
      ~{if defined(timeTimeIt) then ("--timeit " +  '"' + timeTimeIt + '"') else ""} \
      ~{if defined(timeTimeItName) then ("--timeit-name " +  '"' + timeTimeItName + '"') else ""} \
      ~{true="--timeit-header" false="" timeTimeItHeader} \
      ~{if defined(outputOutputFilenamePattern) then ("--output-filename-pattern " +  '"' + outputOutputFilenamePattern + '"') else ""} \
      ~{true="--force-output" false="" forceForceOutput} \
      ~{if defined(stdinStdin) then ("--stdin " +  '"' + stdinStdin + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{if defined(errorError) then ("--error " +  '"' + errorError + '"') else ""} \
      ~{if defined(stdoutStdout) then ("--stdout " +  '"' + stdoutStdout + '"') else ""}
  >>>
}