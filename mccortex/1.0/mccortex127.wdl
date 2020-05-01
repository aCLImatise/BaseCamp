version 1.0

task Mccortex127 {
  input {
    Boolean quietQuiet
    Boolean forceForce
    String memoryMemory
    String nkNkMers
    String threadsThreads
    File outOut
    String pathsPaths
  }
  command <<<
    mccortex127 \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(memoryMemory) then ("--memory " +  '"' + memoryMemory + '"') else ""} \
      ~{if defined(nkNkMers) then ("--nkmers " +  '"' + nkNkMers + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{if defined(pathsPaths) then ("--paths " +  '"' + pathsPaths + '"') else ""}
  >>>
}