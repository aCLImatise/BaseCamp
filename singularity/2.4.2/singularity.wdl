version 1.0

task Singularity {
  input {
    Boolean debugDebug
    Boolean silentSilent
    Boolean quietQuiet
    Boolean verboseVerbose
    String shShDebug
  }
  command <<<
    singularity \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--silent" false="" silentSilent} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(shShDebug) then ("--sh-debug " +  '"' + shShDebug + '"') else ""}
  >>>
}