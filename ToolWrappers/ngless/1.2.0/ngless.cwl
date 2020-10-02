class: CommandLineTool
id: ngless.cwl
inputs:
- id: in_local_file
  doc: '| --download-demo DEMO-NAME |'
  type: File
  inputBinding:
    prefix: --local-file
- id: in_install_reference_data
  doc: '| --print-path EXEC | --check-install'
  type: File
  inputBinding:
    prefix: --install-reference-data
- id: in_version_short
  doc: print just version string (useful for scripting)
  type: boolean
  inputBinding:
    prefix: --version-short
- id: in_version_debug
  doc: print detailed version information
  type: boolean
  inputBinding:
    prefix: --version-debug
- id: in_date_short
  doc: print just release date string (useful for scripting)
  type: boolean
  inputBinding:
    prefix: --date-short
- id: in_script
  doc: inline script to execute
  type: string
  inputBinding:
    prefix: --script
- id: in_validate_only
  doc: Only validate input, do not run script
  type: boolean
  inputBinding:
    prefix: --validate-only
- id: in_print_last
  doc: print value of last line in script
  type: boolean
  inputBinding:
    prefix: --print-last
- id: in_trace
  doc: Set highest verbosity mode
  type: boolean
  inputBinding:
    prefix: --trace
- id: in_no_trace
  doc: opposite of --trace
  type: boolean
  inputBinding:
    prefix: --no-trace
- id: in_threads
  doc: Nr of threads to use
  type: string
  inputBinding:
    prefix: --threads
- id: in_strict_threads
  doc: "strictly respect the --threads option (by default,\nNGLess will, occasionally,\
    \ use more threads than\nspecified)"
  type: boolean
  inputBinding:
    prefix: --strict-threads
- id: in_no_strict_threads
  doc: opposite of --strict-threads
  type: boolean
  inputBinding:
    prefix: --no-strict-threads
- id: in_create_report
  doc: create the report directory
  type: boolean
  inputBinding:
    prefix: --create-report
- id: in_no_create_report
  doc: opposite of --create-report
  type: boolean
  inputBinding:
    prefix: --no-create-report
- id: in_html_report_directory
  doc: name of output directory
  type: Directory
  inputBinding:
    prefix: --html-report-directory
- id: in_temporary_directory
  doc: Directory where to store temporary files
  type: Directory
  inputBinding:
    prefix: --temporary-directory
- id: in_keep_temporary_files
  doc: "Whether to keep temporary files (default is delete\nthem)"
  type: boolean
  inputBinding:
    prefix: --keep-temporary-files
- id: in_no_keep_temporary_files
  doc: opposite of --keep-temporary-files
  type: boolean
  inputBinding:
    prefix: --no-keep-temporary-files
- id: in_config_file
  doc: Configuration files to parse
  type: File
  inputBinding:
    prefix: --config-file
- id: in_no_header
  doc: Do not print copyright information
  type: boolean
  inputBinding:
    prefix: --no-header
- id: in_subsample
  doc: "Subsample mode: quickly test a pipeline by discarding\n99% of the input"
  type: boolean
  inputBinding:
    prefix: --subsample
- id: in_experimental_features
  doc: Whether to allow the use of experimental features
  type: boolean
  inputBinding:
    prefix: --experimental-features
- id: in_export_json
  doc: File to write JSON representation of script to
  type: File
  inputBinding:
    prefix: --export-json
- id: in_export_cwl
  doc: File to write CWL wrapper of given script
  type: File
  inputBinding:
    prefix: --export-cwl
- id: in_check_deprecation
  doc: Check if ngless version or any used modules have been
  type: boolean
  inputBinding:
    prefix: --check-deprecation
- id: in_search_path
  doc: "Reference search directories (replace <references> in\nscript)"
  type: File
  inputBinding:
    prefix: --search-path
- id: in_index_path
  doc: Index path (directory where indices are stored)
  type: File
  inputBinding:
    prefix: --index-path
- id: in_check_install
  doc: Check if ngless is correctly installed
  type: boolean
  inputBinding:
    prefix: --check-install
- id: in_verbose
  doc: Print paths
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_color
  doc: "Color settings, one of 'auto' (color if writing to a\nterminal, this is the\
    \ default), 'force' (always\ncolor), 'no' (no color)."
  type: string
  inputBinding:
    prefix: --color
- id: in_input
  doc: Filename of script to interpret
  type: string
  inputBinding:
    position: 0
- id: in_deprecated
  doc: --search-dir ARG         Deprecated. Use --search-path instead
  type: string
  inputBinding:
    position: 1
- id: in_ref
  doc: Name of reference to install
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_html_report_directory
  doc: name of output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_html_report_directory)
cwlVersion: v1.1
baseCommand:
- ngless
