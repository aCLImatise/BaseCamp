version 1.0

task IgdiscoverMerge {
  input {
    String threadsThreads
    Boolean noNoCache
    String? readReadS1
    String? readReadS2
    String? outputOutput
  }
  command <<<
    igdiscover merge \
      ~{readReadS1} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--no-cache" false="" noNoCache} \
      ~{readReadS2} \
      ~{outputOutput}
  >>>
}