version 1.0

task DaisySuiteTarget {
  input {
    Boolean? cores
    Boolean? keep_going
    Boolean? dry_run
    Boolean? print_shell_cmds
    File? config_file
    String daisy_suite
    String? snake_make
  }
  command <<<
    DaisySuite target \
      ~{daisy_suite} \
      ~{snake_make} \
      ~{if (cores) then "--cores" else ""} \
      ~{if (keep_going) then "--keep-going" else ""} \
      ~{if (dry_run) then "--dryrun" else ""} \
      ~{if (print_shell_cmds) then "--printshellcmds" else ""} \
      ~{if defined(config_file) then ("--configfile " +  '"' + config_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cores: "number of cores"
    keep_going: "go on with independent jobs if a job fails"
    dry_run: "do not execute anything"
    print_shell_cmds: "print out the shell commands that will be executed"
    config_file: ""
    daisy_suite: ""
    snake_make: ""
  }
  output {
    File out_stdout = stdout()
  }
}