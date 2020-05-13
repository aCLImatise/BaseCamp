version 1.0

task Arrow {
  input {
    Boolean verboseVerbose
    String apolloApolloInstance
    Boolean logLogLevel
  }
  command <<<
    arrow \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(apolloApolloInstance) then ("--apollo_instance " +  '"' + apolloApolloInstance + '"') else ""} \
      ~{true="--log-level" false="" logLogLevel}
  >>>
}