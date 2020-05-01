version 1.0

task Rake {
  input {
    Boolean silentSilent
    Boolean traceTrace
    Boolean tasksTasks
    Boolean verboseVerbose
    Boolean whereWhere
    Boolean noNoDeprecationWarnings
  }
  command <<<
    rake \
      ~{true="--silent" false="" silentSilent} \
      ~{true="--trace" false="" traceTrace} \
      ~{true="--tasks" false="" tasksTasks} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--where" false="" whereWhere} \
      ~{true="--no-deprecation-warnings" false="" noNoDeprecationWarnings}
  >>>
}