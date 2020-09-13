version 1.0

task Rppr {
  input {
    Boolean? cmds
    Boolean? batch
    Boolean? quiet
    Boolean? help
  }
  command <<<
    rppr \
      ~{if (cmds) then "--cmds" else ""} \
      ~{if (batch) then "--batch" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (help) then "-help" else ""}
  >>>
  parameter_meta {
    cmds: "Print a list of the available commands."
    batch: "Run the provided batch file of guppy commands"
    quiet: "Don't write messages to stdout (unless explicitly requested)."
    help: "Display this list of options and subcommands"
  }
  output {
    File out_stdout = stdout()
  }
}