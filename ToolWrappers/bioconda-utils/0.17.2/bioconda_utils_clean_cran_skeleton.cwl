class: CommandLineTool
id: bioconda_utils_clean_cran_skeleton.cwl
inputs:
- id: in_no_windows
  doc: "Use this when submitting an R package to Bioconda.\nAfter a CRAN skeleton\
    \ is created, any Windows-related\nlines will be removed and the bld.bat file\
    \ will be\nremoved. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --no-windows
- id: in_loglevel
  doc: "Set logging level (debug, info, warning, error,\ncritical) (default: 'info')"
  type: string?
  inputBinding:
    prefix: --loglevel
- id: in_log_file
  doc: 'Write log to file (default: -)'
  type: File?
  inputBinding:
    prefix: --logfile
- id: in_log_file_level
  doc: "Log level for log file (default: 'debug')"
  type: File?
  inputBinding:
    prefix: --logfile-level
- id: in_log_command_max_lines
  doc: "Limit lines emitted for commands executed (default: -)\n"
  type: long?
  inputBinding:
    prefix: --log-command-max-lines
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bioconda-utils:0.17.2--py_0
cwlVersion: v1.1
baseCommand:
- bioconda-utils
- clean-cran-skeleton
