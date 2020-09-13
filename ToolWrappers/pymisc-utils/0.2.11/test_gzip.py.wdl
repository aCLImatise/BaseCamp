version 1.0

task TestGzippy {
  input {
    Int? block_size
    Int? num_iterations
    File? read_file
    File? write_file
    File? log_file
    Boolean? log_stdout
    Boolean? no_log_stderr
    String? logging_level
    String? file_logging_level
    String? stdout_logging_level
    String? stderr_logging_level
  }
  command <<<
    test_gzip_py \
      ~{if defined(block_size) then ("--blocksize " +  '"' + block_size + '"') else ""} \
      ~{if defined(num_iterations) then ("--num-iterations " +  '"' + num_iterations + '"') else ""} \
      ~{if defined(read_file) then ("--read-file " +  '"' + read_file + '"') else ""} \
      ~{if defined(write_file) then ("--write-file " +  '"' + write_file + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if (log_stdout) then "--log-stdout" else ""} \
      ~{if (no_log_stderr) then "--no-log-stderr" else ""} \
      ~{if defined(logging_level) then ("--logging-level " +  '"' + logging_level + '"') else ""} \
      ~{if defined(file_logging_level) then ("--file-logging-level " +  '"' + file_logging_level + '"') else ""} \
      ~{if defined(stdout_logging_level) then ("--stdout-logging-level " +  '"' + stdout_logging_level + '"') else ""} \
      ~{if defined(stderr_logging_level) then ("--stderr-logging-level " +  '"' + stderr_logging_level + '"') else ""}
  >>>
  parameter_meta {
    block_size: "The size of blocks for reading and writing (default:\\n4k)"
    num_iterations: "The number of iterations (default: 30)"
    read_file: ""
    write_file: ""
    log_file: "This option specifies a file to which logging\\nstatements will be written (in addition to stdout and\\nstderr, if specified) (default: )"
    log_stdout: "If this flag is present, then logging statements will\\nbe written to stdout (in addition to a file and\\nstderr, if specified) (default: False)"
    no_log_stderr: "Unless this flag is present, then logging statements\\nwill be written to stderr (in addition to a file and\\nstdout, if specified) (default: False)"
    logging_level: "If this value is specified, then it will be used for\\nall logs (default: WARNING)"
    file_logging_level: "The logging level to be used for the log file, if\\nspecified. This option overrides --logging-level.\\n(default: NOTSET)"
    stdout_logging_level: "The logging level to be used for the stdout log, if\\nspecified. This option overrides --logging-level.\\n(default: NOTSET)"
    stderr_logging_level: "The logging level to be used for the stderr log, if\\nspecified. This option overrides --logging-level.\\n(default: NOTSET)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}