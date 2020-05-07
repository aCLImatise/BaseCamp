version 1.0

task ProkkaCddToHmm {
  input {
    Boolean verboseVerbose
    String srcdirSrcdir
    String libLib
    Boolean forceForce
  }
  command <<<
    prokka-cdd_to_hmm \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(srcdirSrcdir) then ("--srcdir " +  '"' + srcdirSrcdir + '"') else ""} \
      ~{if defined(libLib) then ("--lib " +  '"' + libLib + '"') else ""} \
      ~{true="--force" false="" forceForce}
  >>>
}