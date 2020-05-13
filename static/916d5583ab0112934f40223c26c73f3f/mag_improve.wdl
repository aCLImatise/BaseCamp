version 1.0

task MagImprove {
  input {
    String kK
    File referenceReference
    String threadsThreads
    String tmpdirTmpdir
  }
  command <<<
    mag-improve \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(tmpdirTmpdir) then ("--tmpdir " +  '"' + tmpdirTmpdir + '"') else ""}
  >>>
}