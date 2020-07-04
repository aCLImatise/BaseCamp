version 1.0

task SummarizeStats {
  input {
    Boolean? verbose
    Boolean? debug
    String? prefix
  }
  command <<<
    summarize_stats \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    verbose: "print additional information to STDERR"
    debug: "print debug messages to STDERR"
    prefix: "prefix of temporary statistics files"
  }
}