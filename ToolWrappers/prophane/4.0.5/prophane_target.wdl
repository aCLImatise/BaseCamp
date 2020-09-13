version 1.0

task ProphaneTarget {
  input {
    Boolean? list_dbs
    Boolean? list_styles
    Boolean? db_maintenance
    Boolean? cores
    Boolean? keep_going
    Boolean? dry_run
    Boolean? print_shell_cmds
    Boolean? timestamp
  }
  command <<<
    prophane target \
      ~{if (list_dbs) then "--list-dbs" else ""} \
      ~{if (list_styles) then "--list-styles" else ""} \
      ~{if (db_maintenance) then "--db-maintenance" else ""} \
      ~{if (cores) then "--cores" else ""} \
      ~{if (keep_going) then "--keep-going" else ""} \
      ~{if (dry_run) then "--dryrun" else ""} \
      ~{if (print_shell_cmds) then "--printshellcmds" else ""} \
      ~{if (timestamp) then "--timestamp" else ""}
  >>>
  parameter_meta {
    list_dbs: "print list of configured databases\\ndatabases are looked up in 'db_base_dir' configured in:\\n/usr/local/opt/prophane/general_config.yaml"
    list_styles: "print list of available input file styles\\nstyles are looked up in the following folder:\\n/usr/local/opt/prophane/styles"
    db_maintenance: "trigger database maintenance scripts\\nwill migrate database structure from deprecated structure to most recent"
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