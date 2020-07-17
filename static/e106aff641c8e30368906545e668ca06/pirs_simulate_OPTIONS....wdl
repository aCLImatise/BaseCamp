version 1.0

task PirsSimulateOPTIONS... {
  input {
    Boolean? no_gc_content_bias
    String? output_prefix
    String? output_file_type
    Boolean? compress
    Boolean? no_log_files
    String? random_seed
    String? threads
    Boolean? quiet
  }
  command <<<
    pirs simulate OPTIONS... \
      ~{true="--no-gc-content-bias" false="" no_gc_content_bias} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(output_file_type) then ("--output-file-type " +  '"' + output_file_type + '"') else ""} \
      ~{true="--compress" false="" compress} \
      ~{true="--no-log-files" false="" no_log_files} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    no_gc_content_bias: "Do not simulate GC bias.  The GC bias profile will not be used."
    output_prefix: "Use PREFIX as the prefix of the output files.  Default: \"pirs_reads\""
    output_file_type: "The string \"text\" or \"gzip\" to specify the type of the output FASTQ files containing the simulated reads of the genome, as well as the log files.  Default: \"text\""
    compress: "Equivalent to -c gzip."
    no_log_files: "Do not write the log files."
    random_seed: "Use SEED as the random seed. Default: time(NULL) * getpid().  Note: If pIRS was not compiled with --disable-threads, each thread actually uses its own random number generator that is seeded by this base seed added to the thread number; also, if you need pIRS's output to be exactly reproducible, you must specify the random seed as well as use only 1 simulator thread (--threads=1, or configure with --disable-threads, or run on system with 4 or fewer processors)."
    threads: "Use NUM_THREADS threads to simulate reads.  This option is not available if pIRS was compiled with the --disable-threads option.  Default: number of processors minus 2 if writing uncompressed output, or number of processors minus 3 if writing compressed output, or 1 if there are not this many processors."
    quiet: "Do not print informational messages."
  }
}