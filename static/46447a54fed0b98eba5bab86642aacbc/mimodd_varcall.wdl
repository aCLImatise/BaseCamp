version 1.0

task MimoddVarcall {
  input {
    String indexIndexFiles
    String ofileOfile
    Boolean groupGroupById
    Boolean relaxedRelaxed
    Int maxMaxDepth
    Boolean quietQuiet
    Boolean verboseVerbose
    String threadsThreads
  }
  command <<<
    mimodd varcall \
      ~{if defined(indexIndexFiles) then ("--index-files " +  '"' + indexIndexFiles + '"') else ""} \
      ~{if defined(ofileOfile) then ("--ofile " +  '"' + ofileOfile + '"') else ""} \
      ~{true="--group-by-id" false="" groupGroupById} \
      ~{true="--relaxed" false="" relaxedRelaxed} \
      ~{if defined(maxMaxDepth) then ("--max-depth " +  '"' + maxMaxDepth + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}