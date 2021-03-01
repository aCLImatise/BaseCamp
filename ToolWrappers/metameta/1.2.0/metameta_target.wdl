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
      ~{if (use_cond_a) then "--use-conda" else ""} \
      ~{if (cores) then "--cores" else ""} \
      ~{if (keep_going) then "--keep-going" else ""} \
      ~{if (dry_run) then "--dryrun" else ""} \
      ~{if (print_shell_cmds) then "--printshellcmds" else ""} \
      ~{if (timestamp) then "--timestamp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    use_cond_a: "use conda to automatically install pre-configured packages"
    cores: "number of cores"
    keep_going: "go on with independent jobs if a job fails"
    dry_run: "do not execute anything"
    print_shell_cmds: "print out the shell commands that will be executed"
    timestamp: "add a timestamp to all logging output"
  }
  output {
    File out_stdout = stdout()
  }
}