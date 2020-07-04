version 1.0

task Guppy {
  input {
    Boolean? cmds
    Boolean? batch
    Boolean? quiet
    Boolean? help
  }
  command <<<
    guppy \
      ~{true="--cmds" false="" cmds} \
      ~{true="--batch" false="" batch} \
      ~{true="--quiet" false="" quiet} \
      ~{true="-help" false="" help}
  >>>
  parameter_meta {
    cmds: "Print a list of the available commands."
    batch: "Run the provided batch file of guppy commands"
    quiet: "Don't write messages to stdout (unless explicitly requested)."
    help: "Display this list of options and subcommands"
  }
}