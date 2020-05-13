version 1.0

task SgaGenSsa {
  input {
    Boolean verboseVerbose
    String threadsThreads
    Boolean checkCheck
    Boolean saiSaiOnly
  }
  command <<<
    sga gen-ssa \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--check" false="" checkCheck} \
      ~{true="--sai-only" false="" saiSaiOnly}
  >>>
}