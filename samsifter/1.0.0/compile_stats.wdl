version 1.0

task CompileStats {
  input {
    Boolean? verbose
    Boolean? debug
    Boolean? remove
    String? prefix
  }
  command <<<
    compile_stats \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug} \
      ~{true="--remove" false="" remove} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    verbose: "print additional information to STDERR"
    debug: "print debug messages to STDERR"
    remove: "remove temporary statistics files after use"
    prefix: "prefix of temporary statistics files"
  }
}