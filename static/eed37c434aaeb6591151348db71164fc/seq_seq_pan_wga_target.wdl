version 1.0

task SeqseqpanwgaTarget {
  input {
    Boolean? dry_run
    Boolean? print_shell_cmds
    Boolean? timestamp
    File? config
    String seq_seq_pan_wga
  }
  command <<<
    seq_seq_pan_wga target \
      ~{seq_seq_pan_wga} \
      ~{if (dry_run) then "--dryrun" else ""} \
      ~{if (print_shell_cmds) then "--printshellcmds" else ""} \
      ~{if (timestamp) then "--timestamp" else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""}
  >>>
  parameter_meta {
    dry_run: "do not execute anything"
    print_shell_cmds: "print out the shell commands that will be executed"
    timestamp: "add a timestamp to all logging output"
    config: ""
    seq_seq_pan_wga: ""
  }
  output {
    File out_stdout = stdout()
  }
}