version 1.0

task Rake {
  input {
    Boolean? silent
    Boolean? trace
    Boolean? tasks
    Boolean? verbose
    Boolean? where
    Boolean? no_deprecation_warnings
  }
  command <<<
    rake \
      ~{true="--silent" false="" silent} \
      ~{true="--trace" false="" trace} \
      ~{true="--tasks" false="" tasks} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--where" false="" where} \
      ~{true="--no-deprecation-warnings" false="" no_deprecation_warnings}
  >>>
  parameter_meta {
    silent: "Like --quiet, but also suppresses the 'in directory' announcement."
    trace: "=[OUT]                Turn on invoke/execute tracing, enable full backtrace. OUT can be stderr (default) or stdout."
    tasks: "[PATTERN]            Display the tasks (matching optional PATTERN) with descriptions, then exit."
    verbose: "Log message to standard output."
    where: "[PATTERN]            Describe the tasks (matching optional PATTERN), then exit."
    no_deprecation_warnings: "Disable the deprecation warnings."
  }
}