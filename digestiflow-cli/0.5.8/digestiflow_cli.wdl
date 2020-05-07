version 1.0

task DigestiflowCli {
  input {
    Boolean verboseVerbose
    Boolean quietQuiet
    Boolean dryDryRun
    String threadsThreads
    Boolean logLogToken
    String webWebUrl
  }
  command <<<
    digestiflow-cli \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--dry-run" false="" dryDryRun} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--log-token" false="" logLogToken} \
      ~{if defined(webWebUrl) then ("--web-url " +  '"' + webWebUrl + '"') else ""}
  >>>
}