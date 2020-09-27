version 1.0

task PanpascopipelineDisk {
  input {
    Boolean? _dryrun_execute
    Boolean? _printshellcmds_print
    Boolean? _timestamp_add
    String? jobs
    File? config_file
    String pan_pasco_pipeline
    String? snake_make
  }
  command <<<
    panpasco_pipeline disk_ \
      ~{pan_pasco_pipeline} \
      ~{snake_make} \
      ~{if (_dryrun_execute) then "-n" else ""} \
      ~{if (_printshellcmds_print) then "-p" else ""} \
      ~{if (_timestamp_add) then "-t" else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if defined(config_file) then ("--configfile " +  '"' + config_file + '"') else ""}
  >>>
  parameter_meta {
    _dryrun_execute: ",   --dryrun           do not execute anything"
    _printshellcmds_print: ",   --printshellcmds   print out the shell commands that will be executed"
    _timestamp_add: ",   --timestamp        add a timestamp to all logging output"
    jobs: "use at most N cores in parallel"
    config_file: ""
    pan_pasco_pipeline: ""
    snake_make: ""
  }
  output {
    File out_stdout = stdout()
  }
}