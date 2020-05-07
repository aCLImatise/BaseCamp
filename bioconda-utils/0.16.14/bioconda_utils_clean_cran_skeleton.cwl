class: CommandLineTool
id: bioconda_utils_clean_cran_skeleton.cwl
inputs:
- id: recipe
  doc: Path to recipe to be cleaned
  type: string
  inputBinding:
    position: 0
- id: no_windows
  doc: 'Use this when submitting an R package to Bioconda. After a CRAN skeleton is
    created, any Windows-related lines will be removed and the bld.bat file will be
    removed. (default: False)'
  type: boolean
  inputBinding:
    prefix: --no-windows
- id: loglevel
  doc: "Set logging level (debug, info, warning, error, critical) (default: 'info')"
  type: string
  inputBinding:
    prefix: --loglevel
- id: log_file
  doc: 'Write log to file (default: -)'
  type: string
  inputBinding:
    prefix: --logfile
- id: log_file_level
  doc: "Log level for log file (default: 'debug')"
  type: string
  inputBinding:
    prefix: --logfile-level
- id: log_command_max_lines
  doc: 'Limit lines emitted for commands executed (default: -)'
  type: string
  inputBinding:
    prefix: --log-command-max-lines
outputs: []
cwlVersion: v1.1
baseCommand:
- bioconda-utils
- clean-cran-skeleton
