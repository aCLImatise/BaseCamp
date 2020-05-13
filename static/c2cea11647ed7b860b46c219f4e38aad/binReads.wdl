version 1.0

task BinReads.pl {
  input {
    File referenceReference
    Int threadsThreads
  }
  command <<<
    binReads.pl \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}