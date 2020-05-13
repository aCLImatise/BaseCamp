version 1.0

task BigWigCluster {
  input {
    String threadsThreads
    Boolean tmpdirTmpdir
    String? inputInputList
    String? chromChromSizes
    String? outputOutputJson
    String? outputOutputTab
  }
  command <<<
    bigWigCluster \
      ~{inputInputList} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="-tmpDir" false="" tmpdirTmpdir} \
      ~{chromChromSizes} \
      ~{outputOutputJson} \
      ~{outputOutputTab}
  >>>
}