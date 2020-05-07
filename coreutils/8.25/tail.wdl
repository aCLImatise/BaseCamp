version 1.0

task Tail {
  input {
    Boolean bytesBytes
    Boolean followFollow
    Boolean fF
    Boolean linesLines
    String maxMaxUnchangedStats
    String pidPid
    Boolean silentSilent
    Boolean retryRetry
    String sleepSleepInterval
    Boolean verboseVerbose
    Boolean zeroZeroTerminated
  }
  command <<<
    tail \
      ~{true="--bytes" false="" bytesBytes} \
      ~{true="--follow" false="" followFollow} \
      ~{true="-F" false="" fF} \
      ~{true="--lines" false="" linesLines} \
      ~{if defined(maxMaxUnchangedStats) then ("--max-unchanged-stats " +  '"' + maxMaxUnchangedStats + '"') else ""} \
      ~{if defined(pidPid) then ("--pid " +  '"' + pidPid + '"') else ""} \
      ~{true="--silent" false="" silentSilent} \
      ~{true="--retry" false="" retryRetry} \
      ~{if defined(sleepSleepInterval) then ("--sleep-interval " +  '"' + sleepSleepInterval + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--zero-terminated" false="" zeroZeroTerminated}
  >>>
}