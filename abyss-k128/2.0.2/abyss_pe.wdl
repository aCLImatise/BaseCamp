version 1.0

task AbyssPe {
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
    Boolean? no_silent
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
    abyss-pe \
      ~{make} \
      ~{target} \
      ~{true="-b" false="" ignored_for_compatibility} \
      ~{true="--always-make" false="" always_make} \
      ~{if defined(directory) then ("--directory " +  '"' + directory + '"') else ""} \
      ~{true="-d" false="" print_lots_debugging} \
      ~{true="--debug" false="" debug} \
      ~{true="--environment-overrides" false="" environment_overrides} \
      ~{if defined(eval) then ("--eval " +  '"' + eval + '"') else ""} \
      ~{if defined(makefile) then ("--makefile " +  '"' + makefile + '"') else ""} \
      ~{true="--ignore-errors" false="" ignore_errors} \
      ~{if defined(include_dir) then ("--include-dir " +  '"' + include_dir + '"') else ""} \
      ~{true="-j" false="" allow_n_jobs} \
      ~{true="--keep-going" false="" keep_going} \
      ~{true="-l" false="" start_multiple_jobs} \
      ~{true="--check-symlink-times" false="" check_symlink_times} \
      ~{true="--just-print" false="" just_print} \
      ~{if defined(assume_old) then ("--assume-old " +  '"' + assume_old + '"') else ""} \
      ~{true="-O" false="" synchronize_output_parallel} \
      ~{true="--print-data-base" false="" print_data_base} \
      ~{true="--question" false="" question} \
      ~{true="--no-builtin-rules" false="" no_built_in_rules} \
      ~{true="--no-builtin-variables" false="" no_built_in_variables} \
      ~{true="--silent" false="" silent} \
      ~{true="--no-silent" false="" no_silent} \
      ~{true="--no-keep-going" false="" no_keep_going} \
      ~{true="--touch" false="" touch} \
      ~{true="--trace" false="" trace} \
      ~{true="--print-directory" false="" print_directory} \
      ~{true="--no-print-directory" false="" no_print_directory} \
      ~{if defined(assume_new) then ("--assume-new " +  '"' + assume_new + '"') else ""} \
      ~{true="--warn-undefined-variables" false="" warn_undefined_variables}
  >>>
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
    start_multiple_jobs: "[N], --load-average[=N], --max-load[=N] Don't start multiple jobs unless load is below N."
    check_symlink_times: "Use the latest mtime between symlinks and target."
    just_print: "Don't actually run any recipe; just print them."
    assume_old: "Consider FILE to be very old and don't remake it."
    synchronize_output_parallel: "[TYPE], --output-sync[=TYPE] Synchronize output of parallel jobs by TYPE."
    print_data_base: "Print make's internal database."
    question: "Run no recipe; exit status says if up to date."
    no_built_in_rules: "Disable the built-in implicit rules."
    no_built_in_variables: "Disable the built-in variable settings."
    silent: "Don't echo recipes."
    no_silent: "Echo recipes (disable --silent mode)."
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
}