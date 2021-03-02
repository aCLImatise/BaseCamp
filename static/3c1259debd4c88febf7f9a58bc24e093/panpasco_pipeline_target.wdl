version 1.0

task PanpascopipelineTarget {
  input {
    Boolean? dry_run
    Boolean? print_shell_cmds
    Boolean? timestamp
    String? jobs
    File? config_file
    String pan_pasco_pipeline
    String? snake_make
  }
  command <<<
    panpasco_pipeline target \
      ~{pan_pasco_pipeline} \
      ~{snake_make} \
      ~{if (dry_run) then "--dryrun" else ""} \
      ~{if (print_shell_cmds) then "--printshellcmds" else ""} \
      ~{if (timestamp) then "--timestamp" else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if defined(config_file) then ("--configfile " +  '"' + config_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dry_run: "do not execute anything"
    print_shell_cmds: "print out the shell commands that will be executed"
    timestamp: "add a timestamp to all logging output"
    jobs: "use at most N cores in parallel"
    config_file: ""
    pan_pasco_pipeline: ""
    snake_make: ""
  }
  output {
    File out_stdout = stdout()
  }
}