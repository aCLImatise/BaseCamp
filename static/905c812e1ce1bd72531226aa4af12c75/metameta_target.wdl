version 1.0

task MetametaTarget {
  input {
    Boolean? use_cond_a
    Boolean? cores
    Boolean? keep_going
    Boolean? dry_run
    Boolean? print_shell_cmds
    Boolean? timestamp
  }
  command <<<
    metameta target \
      ~{true="--use-conda" false="" use_cond_a} \
      ~{true="--cores" false="" cores} \
      ~{true="--keep-going" false="" keep_going} \
      ~{true="--dryrun" false="" dry_run} \
      ~{true="--printshellcmds" false="" print_shell_cmds} \
      ~{true="--timestamp" false="" timestamp}
  >>>
  parameter_meta {
    use_cond_a: "use conda to automatically install pre-configured packages"
    cores: "number of cores"
    keep_going: "go on with independent jobs if a job fails"
    dry_run: "do not execute anything"
    print_shell_cmds: "print out the shell commands that will be executed"
    timestamp: "add a timestamp to all logging output"
  }
}