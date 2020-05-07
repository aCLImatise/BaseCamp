version 1.0

task SgaMergeDriver.pl {
  input {
    String threadsThreads
    String binBin
    File? filesFiles
  }
  command <<<
    sga-mergeDriver.pl \
      ~{filesFiles} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(binBin) then ("--bin " +  '"' + binBin + '"') else ""}
  >>>
}