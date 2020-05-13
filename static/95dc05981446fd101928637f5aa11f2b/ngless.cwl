class: CommandLineTool
id: ngless.cwl
inputs:
- id: input
  doc: Filename of script to interpret
  type: string
  inputBinding:
    position: 0
- id: ref
  doc: Name of reference to install
  type: string
  inputBinding:
    position: 1
- id: version_short
  doc: print just version string (useful for scripting)
  type: boolean
  inputBinding:
    prefix: --version-short
- id: version_debug
  doc: print detailed version information
  type: boolean
  inputBinding:
    prefix: --version-debug
- id: date_short
  doc: print just release date string (useful for scripting)
  type: boolean
  inputBinding:
    prefix: --date-short
- id: script
  doc: inline script to execute
  type: string
  inputBinding:
    prefix: --script
- id: validate_only
  doc: Only validate input, do not run script
  type: boolean
  inputBinding:
    prefix: --validate-only
- id: print_last
  doc: print value of last line in script
  type: boolean
  inputBinding:
    prefix: --print-last
- id: trace
  doc: Set highest verbosity mode
  type: boolean
  inputBinding:
    prefix: --trace
- id: no_trace
  doc: opposite of --trace
  type: boolean
  inputBinding:
    prefix: --no-trace
- id: threads
  doc: Nr of threads to use
  type: string
  inputBinding:
    prefix: --threads
- id: strict_threads
  doc: strictly respect the --threads option (by default, NGLess will, occasionally,
    use more threads than specified)
  type: boolean
  inputBinding:
    prefix: --strict-threads
- id: no_strict_threads
  doc: opposite of --strict-threads
  type: boolean
  inputBinding:
    prefix: --no-strict-threads
- id: create_report
  doc: create the report directory
  type: boolean
  inputBinding:
    prefix: --create-report
- id: no_create_report
  doc: opposite of --create-report
  type: boolean
  inputBinding:
    prefix: --no-create-report
- id: html_report_directory
  doc: name of output directory
  type: string
  inputBinding:
    prefix: --html-report-directory
- id: temporary_directory
  doc: Directory where to store temporary files
  type: string
  inputBinding:
    prefix: --temporary-directory
- id: keep_temporary_files
  doc: Whether to keep temporary files (default is delete them)
  type: boolean
  inputBinding:
    prefix: --keep-temporary-files
- id: no_keep_temporary_files
  doc: opposite of --keep-temporary-files
  type: boolean
  inputBinding:
    prefix: --no-keep-temporary-files
- id: config_file
  doc: Configuration files to parse
  type: string
  inputBinding:
    prefix: --config-file
- id: no_header
  doc: Do not print copyright information
  type: boolean
  inputBinding:
    prefix: --no-header
- id: subsample
  doc: 'Subsample mode: quickly test a pipeline by discarding 99% of the input'
  type: boolean
  inputBinding:
    prefix: --subsample
- id: experimental_features
  doc: Whether to allow the use of experimental features
  type: boolean
  inputBinding:
    prefix: --experimental-features
- id: export_json
  doc: File to write JSON representation of script to
  type: string
  inputBinding:
    prefix: --export-json
- id: export_cwl
  doc: File to write CWL wrapper of given script
  type: string
  inputBinding:
    prefix: --export-cwl
- id: check_deprecation
  doc: Check if ngless version or any used modules have been deprecated
  type: boolean
  inputBinding:
    prefix: --check-deprecation
- id: search_dir
  doc: Deprecated. Use --search-path instead
  type: string
  inputBinding:
    prefix: --search-dir
- id: search_path
  doc: Reference search directories (replace <references> in script)
  type: string
  inputBinding:
    prefix: --search-path
- id: index_path
  doc: Index path (directory where indices are stored)
  type: string
  inputBinding:
    prefix: --index-path
- id: check_install
  doc: Check if ngless is correctly installed
  type: boolean
  inputBinding:
    prefix: --check-install
- id: verbose
  doc: Print paths
  type: boolean
  inputBinding:
    prefix: --verbose
- id: color
  doc: Color settings, one of 'auto' (color if writing to a terminal, this is the
    default), 'force' (always color), 'no' (no color).
  type: string
  inputBinding:
    prefix: --color
outputs: []
cwlVersion: v1.1
baseCommand:
- ngless
