class: CommandLineTool
id: tigmint.cwl
inputs:
- id: in_ignored_for_compatibility
  doc: Ignored for compatibility.
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_always_make
  doc: Unconditionally make all targets.
  type: boolean?
  inputBinding:
    prefix: --always-make
- id: in_directory
  doc: Change to DIRECTORY before doing anything.
  type: Directory?
  inputBinding:
    prefix: --directory
- id: in_print_lots_debugging
  doc: Print lots of debugging information.
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_debug
  doc: '[=FLAGS]             Print various types of debugging information.'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_environment_overrides
  doc: Environment variables override makefiles.
  type: boolean?
  inputBinding:
    prefix: --environment-overrides
- id: in_eval
  doc: Evaluate STRING as a makefile statement.
  type: string?
  inputBinding:
    prefix: --eval
- id: in_makefile
  doc: Read FILE as a makefile.
  type: File?
  inputBinding:
    prefix: --makefile
- id: in_ignore_errors
  doc: Ignore errors from recipes.
  type: boolean?
  inputBinding:
    prefix: --ignore-errors
- id: in_include_dir
  doc: Search DIRECTORY for included makefiles.
  type: Directory?
  inputBinding:
    prefix: --include-dir
- id: in_allow_n_jobs
  doc: '[N], --jobs[=N]          Allow N jobs at once; infinite jobs with no arg.'
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_keep_going
  doc: Keep going when some targets can't be made.
  type: boolean?
  inputBinding:
    prefix: --keep-going
- id: in_start_multiple_jobs
  doc: "[N], --load-average[=N], --max-load[=N]\nDon't start multiple jobs unless\
    \ load is below N."
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_check_symlink_times
  doc: Use the latest mtime between symlinks and target.
  type: boolean?
  inputBinding:
    prefix: --check-symlink-times
- id: in_just_print
  doc: Don't actually run any recipe; just print them.
  type: boolean?
  inputBinding:
    prefix: --just-print
- id: in_assume_old
  doc: Consider FILE to be very old and don't remake it.
  type: File?
  inputBinding:
    prefix: --assume-old
- id: in_synchronize_output_parallel
  doc: "[TYPE], --output-sync[=TYPE]\nSynchronize output of parallel jobs by TYPE."
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_print_data_base
  doc: Print make's internal database.
  type: boolean?
  inputBinding:
    prefix: --print-data-base
- id: in_question
  doc: Run no recipe; exit status says if up to date.
  type: boolean?
  inputBinding:
    prefix: --question
- id: in_no_built_in_rules
  doc: Disable the built-in implicit rules.
  type: boolean?
  inputBinding:
    prefix: --no-builtin-rules
- id: in_no_built_in_variables
  doc: Disable the built-in variable settings.
  type: boolean?
  inputBinding:
    prefix: --no-builtin-variables
- id: in_silent
  doc: Don't echo recipes.
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_no_silent
  doc: Echo recipes (disable --silent mode).
  type: boolean?
  inputBinding:
    prefix: --no-silent
- id: in_no_keep_going
  doc: Turns off -k.
  type: boolean?
  inputBinding:
    prefix: --no-keep-going
- id: in_touch
  doc: Touch targets instead of remaking them.
  type: boolean?
  inputBinding:
    prefix: --touch
- id: in_trace
  doc: Print tracing information.
  type: boolean?
  inputBinding:
    prefix: --trace
- id: in_print_directory
  doc: Print the current directory.
  type: boolean?
  inputBinding:
    prefix: --print-directory
- id: in_no_print_directory
  doc: Turn off -w, even if it was turned on implicitly.
  type: boolean?
  inputBinding:
    prefix: --no-print-directory
- id: in_assume_new
  doc: Consider FILE to be infinitely new.
  type: File?
  inputBinding:
    prefix: --assume-new
- id: in_warn_undefined_variables
  doc: Warn when an undefined variable is referenced.
  type: boolean?
  inputBinding:
    prefix: --warn-undefined-variables
- id: in_make
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_target
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tigmint:1.2.2--py_1
cwlVersion: v1.1
baseCommand:
- tigmint
