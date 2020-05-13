version 1.0

task Kget.2.10.3 {
  input {
    String logLogLevel
    Boolean verboseVerbose
    Boolean quietQuiet
    File optionOptionFile
    Boolean verbVerb
    Boolean blockBlockSize
    Boolean showShowSize
    Boolean cacheCache
    Boolean cacheCacheBlock
    Boolean proxyProxy
    Boolean randomRandom
    Boolean repeatRepeat
    Boolean reportReport
    Boolean bufferBuffer
    Boolean sleepSleep
    Boolean timeoutTimeout
    Boolean completeComplete
    Boolean cacheCacheComplete
    Boolean truncateTruncate
    Boolean startStart
    Boolean countCount
    Boolean progressProgress
    Boolean reliableReliable
    Boolean fullFull
  }
  command <<<
    kget.2.10.3 \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(optionOptionFile) then ("--option-file " +  '"' + optionOptionFile + '"') else ""} \
      ~{true="--verb" false="" verbVerb} \
      ~{true="--block-size" false="" blockBlockSize} \
      ~{true="--show-size" false="" showShowSize} \
      ~{true="--cache" false="" cacheCache} \
      ~{true="--cache-block" false="" cacheCacheBlock} \
      ~{true="--proxy" false="" proxyProxy} \
      ~{true="--random" false="" randomRandom} \
      ~{true="--repeat" false="" repeatRepeat} \
      ~{true="--report" false="" reportReport} \
      ~{true="--buffer" false="" bufferBuffer} \
      ~{true="--sleep" false="" sleepSleep} \
      ~{true="--timeout" false="" timeoutTimeout} \
      ~{true="--complete" false="" completeComplete} \
      ~{true="--cache-complete" false="" cacheCacheComplete} \
      ~{true="--truncate" false="" truncateTruncate} \
      ~{true="--start" false="" startStart} \
      ~{true="--count" false="" countCount} \
      ~{true="--progress" false="" progressProgress} \
      ~{true="--reliable" false="" reliableReliable} \
      ~{true="--full" false="" fullFull}
  >>>
}