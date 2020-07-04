version 1.0

task Singularity {
  input {
    Boolean? debug
    Boolean? silent
    Boolean? quiet
    Boolean? verbose
    String? sh_debug
  }
  command <<<
    singularity \
      ~{true="--debug" false="" debug} \
      ~{true="--silent" false="" silent} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(sh_debug) then ("--sh-debug " +  '"' + sh_debug + '"') else ""}
  >>>
  parameter_meta {
    debug: "Print debugging information"
    silent: "Only print errors"
    quiet: "Suppress all normal output"
    verbose: "Increase verbosity +1"
    sh_debug: "shell wrapper debugging information"
  }
}