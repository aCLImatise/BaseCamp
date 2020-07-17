version 1.0

task Phsolverserver {
  input {
    Boolean? verbose
    String? profile
    Boolean? disable_gc
    Boolean? traceback
    String? user_defined_extension
    String hostname
  }
  command <<<
    phsolverserver \
      ~{hostname} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""} \
      ~{true="--disable-gc" false="" disable_gc} \
      ~{true="--traceback" false="" traceback} \
      ~{if defined(user_defined_extension) then ("--user-defined-extension " +  '"' + user_defined_extension + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Generate verbose output for both initialization and execution. Default is False."
    profile: "Enable profiling of Python code.  The value of this option is the number of functions that are summarized."
    disable_gc: "Disable the python garbage collecter. Default is False."
    traceback: "When an exception is thrown, show the entire call stack. Ignored if profiling is enabled. Default is False."
    user_defined_extension: "The name of a python module specifying a user-defined PHSolverServer extension plugin."
    hostname: ""
  }
}