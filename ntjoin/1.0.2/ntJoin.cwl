class: CommandLineTool
id: ntJoin.cwl
inputs:
- id: b
  doc: Ignored for compatibility.
  type: boolean
  inputBinding:
    prefix: -b
- id: always_make
  doc: Unconditionally make all targets.
  type: boolean
  inputBinding:
    prefix: --always-make
- id: directory
  doc: Change to DIRECTORY before doing anything.
  type: Directory
  inputBinding:
    prefix: --directory
- id: d
  doc: Print lots of debugging information.
  type: boolean
  inputBinding:
    prefix: -d
- id: debug
  doc: '[=FLAGS]             Print various types of debugging information.'
  type: boolean
  inputBinding:
    prefix: --debug
- id: environment_overrides
  doc: Environment variables override makefiles.
  type: boolean
  inputBinding:
    prefix: --environment-overrides
- id: eval
  doc: Evaluate STRING as a makefile statement.
  type: string
  inputBinding:
    prefix: --eval
- id: makefile
  doc: Read FILE as a makefile.
  type: File
  inputBinding:
    prefix: --makefile
- id: ignore_errors
  doc: Ignore errors from recipes.
  type: boolean
  inputBinding:
    prefix: --ignore-errors
- id: include_dir
  doc: Search DIRECTORY for included makefiles.
  type: Directory
  inputBinding:
    prefix: --include-dir
- id: j
  doc: '[N], --jobs[=N]          Allow N jobs at once; infinite jobs with no arg.'
  type: boolean
  inputBinding:
    prefix: -j
- id: keep_going
  doc: Keep going when some targets can't be made.
  type: boolean
  inputBinding:
    prefix: --keep-going
- id: l
  doc: "[N], --load-average[=N], --max-load[=N] Don't start multiple jobs unless load\
    \ is below N."
  type: boolean
  inputBinding:
    prefix: -l
- id: check_symlink_times
  doc: Use the latest mtime between symlinks and target.
  type: boolean
  inputBinding:
    prefix: --check-symlink-times
- id: just_print
  doc: Don't actually run any recipe; just print them.
  type: boolean
  inputBinding:
    prefix: --just-print
- id: assume_old
  doc: Consider FILE to be very old and don't remake it.
  type: File
  inputBinding:
    prefix: --assume-old
- id: o
  doc: '[TYPE], --output-sync[=TYPE] Synchronize output of parallel jobs by TYPE.'
  type: boolean
  inputBinding:
    prefix: -O
- id: print_data_base
  doc: Print make's internal database.
  type: boolean
  inputBinding:
    prefix: --print-data-base
- id: question
  doc: Run no recipe; exit status says if up to date.
  type: boolean
  inputBinding:
    prefix: --question
- id: no_built_in_rules
  doc: Disable the built-in implicit rules.
  type: boolean
  inputBinding:
    prefix: --no-builtin-rules
- id: no_built_in_variables
  doc: Disable the built-in variable settings.
  type: boolean
  inputBinding:
    prefix: --no-builtin-variables
- id: silent
  doc: Don't echo recipes.
  type: boolean
  inputBinding:
    prefix: --silent
- id: no_silent
  doc: Echo recipes (disable --silent mode).
  type: boolean
  inputBinding:
    prefix: --no-silent
- id: no_keep_going
  doc: Turns off -k.
  type: boolean
  inputBinding:
    prefix: --no-keep-going
- id: touch
  doc: Touch targets instead of remaking them.
  type: boolean
  inputBinding:
    prefix: --touch
- id: trace
  doc: Print tracing information.
  type: boolean
  inputBinding:
    prefix: --trace
- id: print_directory
  doc: Print the current directory.
  type: boolean
  inputBinding:
    prefix: --print-directory
- id: no_print_directory
  doc: Turn off -w, even if it was turned on implicitly.
  type: boolean
  inputBinding:
    prefix: --no-print-directory
- id: assume_new
  doc: Consider FILE to be infinitely new.
  type: File
  inputBinding:
    prefix: --assume-new
- id: warn_undefined_variables
  doc: Warn when an undefined variable is referenced.
  type: boolean
  inputBinding:
    prefix: --warn-undefined-variables
outputs: []
cwlVersion: v1.1
baseCommand:
- ntJoin
