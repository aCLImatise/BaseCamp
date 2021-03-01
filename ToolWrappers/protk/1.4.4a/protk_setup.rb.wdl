version 1.0

task ProtkSetuprb {
  input {
    Boolean? backtrace
    Boolean? comments
    Boolean? job_stats
    Boolean? rules
    String? suppress_backtrace
    Boolean? all
    Boolean? build_all
    Boolean? describe
    String? execute
    String? execute_continue
    Boolean? rake_file
    Boolean? no_system
    Boolean? system
    File? libdir
    Boolean? jobs
    Boolean? multitask
    Boolean? dry_run
    Boolean? no_search
    Boolean? prereqs
    String? execute_print
    Boolean? quiet
    String? require
    String? rake_libdir
    Boolean? rake_lib
    Boolean? trace
    Boolean? tasks
    Boolean? verbose
    Boolean? where
    Boolean? no_deprecation_warnings
  }
  command <<<
    protk_setup_rb \
      ~{if (backtrace) then "--backtrace" else ""} \
      ~{if (comments) then "--comments" else ""} \
      ~{if (job_stats) then "--job-stats" else ""} \
      ~{if (rules) then "--rules" else ""} \
      ~{if defined(suppress_backtrace) then ("--suppress-backtrace " +  '"' + suppress_backtrace + '"') else ""} \
      ~{if (all) then "--all" else ""} \
      ~{if (build_all) then "--build-all" else ""} \
      ~{if (describe) then "--describe" else ""} \
      ~{if defined(execute) then ("--execute " +  '"' + execute + '"') else ""} \
      ~{if defined(execute_continue) then ("--execute-continue " +  '"' + execute_continue + '"') else ""} \
      ~{if (rake_file) then "--rakefile" else ""} \
      ~{if (no_system) then "--no-system" else ""} \
      ~{if (system) then "--system" else ""} \
      ~{if defined(libdir) then ("--libdir " +  '"' + libdir + '"') else ""} \
      ~{if (jobs) then "--jobs" else ""} \
      ~{if (multitask) then "--multitask" else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (no_search) then "--no-search" else ""} \
      ~{if (prereqs) then "--prereqs" else ""} \
      ~{if defined(execute_print) then ("--execute-print " +  '"' + execute_print + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(require) then ("--require " +  '"' + require + '"') else ""} \
      ~{if defined(rake_libdir) then ("--rakelibdir " +  '"' + rake_libdir + '"') else ""} \
      ~{if (rake_lib) then "--rakelib" else ""} \
      ~{if (trace) then "--trace" else ""} \
      ~{if (tasks) then "--tasks" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (where) then "--where" else ""} \
      ~{if (no_deprecation_warnings) then "--no-deprecation-warnings" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    backtrace: "=[OUT]            Enable full backtrace.  OUT can be stderr (default) or stdout."
    comments: "Show commented tasks only"
    job_stats: "[LEVEL]          Display job statistics. LEVEL=history displays a complete job list"
    rules: "Trace the rules resolution."
    suppress_backtrace: "Suppress backtrace lines matching regexp PATTERN. Ignored if --trace is on."
    all: "Show all tasks, even uncommented ones (in combination with -T or -D)"
    build_all: "Build all prerequisites, including those which are up-to-date."
    describe: "[PATTERN]         Describe the tasks (matching optional PATTERN), then exit."
    execute: "Execute some Ruby code and exit."
    execute_continue: "Execute some Ruby code, then continue with normal task processing."
    rake_file: "[FILENAME]        Use FILENAME as the rakefile to search for."
    no_system: "Use standard project Rakefile search paths, ignore system wide rakefiles."
    system: "Using system wide (global) rakefiles (usually '~/.rake/*.rake')."
    libdir: "Include LIBDIR in the search path for required modules."
    jobs: "[NUMBER]              Specifies the maximum number of tasks to execute in parallel. (default is number of CPU cores + 4)"
    multitask: "Treat all tasks as multitasks."
    dry_run: "Do a dry run without executing actions."
    no_search: "Do not search parent directories for the Rakefile."
    prereqs: "Display the tasks and dependencies, then exit."
    execute_print: "Execute some Ruby code, print the result, then exit."
    quiet: "Do not log messages to standard output."
    require: "Require MODULE before executing rakefile."
    rake_libdir: ",     Auto-import any .rake files in RAKELIBDIR. (default is 'rakelib')"
    rake_lib: "Like --quiet, but also suppresses the 'in directory' announcement."
    trace: "=[OUT]                Turn on invoke/execute tracing, enable full backtrace. OUT can be stderr (default) or stdout."
    tasks: "[PATTERN]            Display the tasks (matching optional PATTERN) with descriptions, then exit. -AT combination displays all of tasks contained no description."
    verbose: "Log message to standard output."
    where: "[PATTERN]            Describe the tasks (matching optional PATTERN), then exit."
    no_deprecation_warnings: "Disable the deprecation warnings."
  }
  output {
    File out_stdout = stdout()
  }
}