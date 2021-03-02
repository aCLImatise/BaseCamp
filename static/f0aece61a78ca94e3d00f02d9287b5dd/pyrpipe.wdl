version 1.0

task Pyrpipe {
  input {
    Int? threads
    Int? max_memory
    Boolean? verbose
    Boolean? force
    Boolean? safe_mode
    Boolean? no_logs
    Directory? param_dir
    Directory? logs_dir
    Boolean? multi_qc
    File? in
    String _dryrun_commands
  }
  command <<<
    pyrpipe \
      ~{_dryrun_commands} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(max_memory) then ("--max-memory " +  '"' + max_memory + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (safe_mode) then "--safe-mode" else ""} \
      ~{if (no_logs) then "--no-logs" else ""} \
      ~{if defined(param_dir) then ("--param-dir " +  '"' + param_dir + '"') else ""} \
      ~{if defined(logs_dir) then ("--logs-dir " +  '"' + logs_dir + '"') else ""} \
      ~{if (multi_qc) then "--multiqc" else ""} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pyrpipe:0.0.5--py_0"
  }
  parameter_meta {
    threads: "Num processes/threads to use Default:mp.cpu_count()"
    max_memory: "Max memory to use (in GB) default: None"
    verbose: "Print pyrpipe_engine's stdout and stderr Default:"
    force: "Force execution of commands if their target files\\nalready exist Default: False"
    safe_mode: "Disable file deletions through pyrpipe_engine module\\nDefault: False"
    no_logs: "Disable pyrpipe logs Default: False"
    param_dir: "Directory containing parameter yaml files Default:\\n./params"
    logs_dir: "Directory for saving log files Default: ./pyrpipe_logs"
    multi_qc: "Autorun MultiQC after execution Default: False"
    in: "The input python script"
    _dryrun_commands: "--dry-run             Only print pyrpipe's commands and not execute anything"
  }
  output {
    File out_stdout = stdout()
  }
}