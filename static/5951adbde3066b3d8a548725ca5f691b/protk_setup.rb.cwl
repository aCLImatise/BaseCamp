class: CommandLineTool
id: protk_setup.rb.cwl
inputs:
- id: in_backtrace
  doc: =[OUT]            Enable full backtrace.  OUT can be stderr (default) or stdout.
  type: boolean?
  inputBinding:
    prefix: --backtrace
- id: in_comments
  doc: Show commented tasks only
  type: boolean?
  inputBinding:
    prefix: --comments
- id: in_job_stats
  doc: '[LEVEL]          Display job statistics. LEVEL=history displays a complete
    job list'
  type: boolean?
  inputBinding:
    prefix: --job-stats
- id: in_rules
  doc: Trace the rules resolution.
  type: boolean?
  inputBinding:
    prefix: --rules
- id: in_suppress_backtrace
  doc: Suppress backtrace lines matching regexp PATTERN. Ignored if --trace is on.
  type: string?
  inputBinding:
    prefix: --suppress-backtrace
- id: in_all
  doc: Show all tasks, even uncommented ones (in combination with -T or -D)
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_build_all
  doc: Build all prerequisites, including those which are up-to-date.
  type: boolean?
  inputBinding:
    prefix: --build-all
- id: in_describe
  doc: '[PATTERN]         Describe the tasks (matching optional PATTERN), then exit.'
  type: boolean?
  inputBinding:
    prefix: --describe
- id: in_execute
  doc: Execute some Ruby code and exit.
  type: string?
  inputBinding:
    prefix: --execute
- id: in_execute_continue
  doc: Execute some Ruby code, then continue with normal task processing.
  type: string?
  inputBinding:
    prefix: --execute-continue
- id: in_rake_file
  doc: '[FILENAME]        Use FILENAME as the rakefile to search for.'
  type: boolean?
  inputBinding:
    prefix: --rakefile
- id: in_no_system
  doc: Use standard project Rakefile search paths, ignore system wide rakefiles.
  type: boolean?
  inputBinding:
    prefix: --no-system
- id: in_system
  doc: Using system wide (global) rakefiles (usually '~/.rake/*.rake').
  type: boolean?
  inputBinding:
    prefix: --system
- id: in_libdir
  doc: Include LIBDIR in the search path for required modules.
  type: File?
  inputBinding:
    prefix: --libdir
- id: in_jobs
  doc: '[NUMBER]              Specifies the maximum number of tasks to execute in
    parallel. (default is number of CPU cores + 4)'
  type: boolean?
  inputBinding:
    prefix: --jobs
- id: in_multitask
  doc: Treat all tasks as multitasks.
  type: boolean?
  inputBinding:
    prefix: --multitask
- id: in_dry_run
  doc: Do a dry run without executing actions.
  type: boolean?
  inputBinding:
    prefix: --dry-run
- id: in_no_search
  doc: Do not search parent directories for the Rakefile.
  type: boolean?
  inputBinding:
    prefix: --no-search
- id: in_prereqs
  doc: Display the tasks and dependencies, then exit.
  type: boolean?
  inputBinding:
    prefix: --prereqs
- id: in_execute_print
  doc: Execute some Ruby code, print the result, then exit.
  type: string?
  inputBinding:
    prefix: --execute-print
- id: in_quiet
  doc: Do not log messages to standard output.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_require
  doc: Require MODULE before executing rakefile.
  type: string?
  inputBinding:
    prefix: --require
- id: in_rake_libdir
  doc: ",     Auto-import any .rake files in RAKELIBDIR. (default is 'rakelib')"
  type: string?
  inputBinding:
    prefix: --rakelibdir
- id: in_rake_lib
  doc: Like --quiet, but also suppresses the 'in directory' announcement.
  type: boolean?
  inputBinding:
    prefix: --rakelib
- id: in_trace
  doc: =[OUT]                Turn on invoke/execute tracing, enable full backtrace.
    OUT can be stderr (default) or stdout.
  type: boolean?
  inputBinding:
    prefix: --trace
- id: in_tasks
  doc: '[PATTERN]            Display the tasks (matching optional PATTERN) with descriptions,
    then exit. -AT combination displays all of tasks contained no description.'
  type: boolean?
  inputBinding:
    prefix: --tasks
- id: in_verbose
  doc: Log message to standard output.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_where
  doc: '[PATTERN]            Describe the tasks (matching optional PATTERN), then
    exit.'
  type: boolean?
  inputBinding:
    prefix: --where
- id: in_no_deprecation_warnings
  doc: Disable the deprecation warnings.
  type: boolean?
  inputBinding:
    prefix: --no-deprecation-warnings
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- protk_setup.rb
