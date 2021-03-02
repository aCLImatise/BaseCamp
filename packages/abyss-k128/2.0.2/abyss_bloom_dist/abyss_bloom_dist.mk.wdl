version 1.0

task Abyssbloomdistmk {
  input {
    Boolean? ignored_for_compatibility
    Boolean? always_make
    Directory? directory
    Boolean? print_lots_debugging
    Boolean? debug
    Boolean? environment_overrides
    String? eval
    File? makefile
    Boolean? ignore_errors
    Directory? include_dir
    Boolean? allow_n_jobs
    Boolean? keep_going
    Boolean? start_multiple_jobs
    Boolean? check_symlink_times
    Boolean? just_print
    File? assume_old
    Boolean? synchronize_output_parallel
    Boolean? print_data_base
    Boolean? question
    Boolean? no_built_in_rules
    Boolean? no_built_in_variables
    Boolean? silent
    Boolean? no_keep_going
    Boolean? touch
    Boolean? trace
    Boolean? print_directory
    Boolean? no_print_directory
    File? assume_new
    Boolean? warn_undefined_variables
    String make
    String? target
  }
  command <<<
    abyss_bloom_dist_mk \
      ~{make} \
      ~{target} \
      ~{if (ignored_for_compatibility) then "-b" else ""} \
      ~{if (always_make) then "--always-make" else ""} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{if (print_lots_debugging) then "-d" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (environment_overrides) then "--environment-overrides" else ""} \
      ~{if defined(eval) then ("--eval " +  '"' + eval + '"') else ""} \
      ~{if defined(makefile) then ("--makefile " +  '"' + makefile + '"') else ""} \
      ~{if (ignore_errors) then "--ignore-errors" else ""} \
      ~{if defined(include_dir) then ("--include-dir " +  '"' + include_dir + '"') else ""} \
      ~{if (allow_n_jobs) then "-j" else ""} \
      ~{if (keep_going) then "--keep-going" else ""} \
      ~{if (start_multiple_jobs) then "-l" else ""} \
      ~{if (check_symlink_times) then "--check-symlink-times" else ""} \
      ~{if (just_print) then "--just-print" else ""} \
      ~{if defined(assume_old) then ("--assume-old " +  '"' + assume_old + '"') else ""} \
      ~{if (synchronize_output_parallel) then "-O" else ""} \
      ~{if (print_data_base) then "--print-data-base" else ""} \
      ~{if (question) then "--question" else ""} \
      ~{if (no_built_in_rules) then "--no-builtin-rules" else ""} \
      ~{if (no_built_in_variables) then "--no-builtin-variables" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (no_keep_going) then "--no-keep-going" else ""} \
      ~{if (touch) then "--touch" else ""} \
      ~{if (trace) then "--trace" else ""} \
      ~{if (print_directory) then "--print-directory" else ""} \
      ~{if (no_print_directory) then "--no-print-directory" else ""} \
      ~{if defined(assume_new) then ("--assume-new " +  '"' + assume_new + '"') else ""} \
      ~{if (warn_undefined_variables) then "--warn-undefined-variables" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ignored_for_compatibility: "Ignored for compatibility."
    always_make: "Unconditionally make all targets."
    directory: "Change to DIRECTORY before doing anything."
    print_lots_debugging: "Print lots of debugging information."
    debug: "[=FLAGS]             Print various types of debugging information."
    environment_overrides: "Environment variables override makefiles."
    eval: "Evaluate STRING as a makefile statement."
    makefile: "Read FILE as a makefile."
    ignore_errors: "Ignore errors from recipes."
    include_dir: "Search DIRECTORY for included makefiles."
    allow_n_jobs: "[N], --jobs[=N]          Allow N jobs at once; infinite jobs with no arg."
    keep_going: "Keep going when some targets can't be made."
    start_multiple_jobs: "[N], --load-average[=N], --max-load[=N]\\nDon't start multiple jobs unless load is below N."
    check_symlink_times: "Use the latest mtime between symlinks and target."
    just_print: "Don't actually run any recipe; just print them."
    assume_old: "Consider FILE to be very old and don't remake it."
    synchronize_output_parallel: "[TYPE], --output-sync[=TYPE]\\nSynchronize output of parallel jobs by TYPE."
    print_data_base: "Print make's internal database."
    question: "Run no recipe; exit status says if up to date."
    no_built_in_rules: "Disable the built-in implicit rules."
    no_built_in_variables: "Disable the built-in variable settings."
    silent: "Don't echo recipes."
    no_keep_going: "Turns off -k."
    touch: "Touch targets instead of remaking them."
    trace: "Print tracing information."
    print_directory: "Print the current directory."
    no_print_directory: "Turn off -w, even if it was turned on implicitly."
    assume_new: "Consider FILE to be infinitely new."
    warn_undefined_variables: "Warn when an undefined variable is referenced."
    make: ""
    target: ""
  }
  output {
    File out_stdout = stdout()
  }
}