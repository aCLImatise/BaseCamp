class: CommandLineTool
id: bioconda_utils_duplicates.cwl
inputs:
- id: config
  doc: Path to yaml file specifying the configuration
  type: string
  inputBinding:
    position: 0
- id: strict_version
  doc: 'Require version to strictly match. (default: False)'
  type: boolean
  inputBinding:
    prefix: --strict-version
- id: strict_build
  doc: 'Require version and build to strictly match. (default: False)'
  type: boolean
  inputBinding:
    prefix: --strict-build
- id: dry_run
  doc: 'Only print removal plan. (default: False)'
  type: boolean
  inputBinding:
    prefix: --dryrun
- id: remove
  doc: 'Remove packages from anaconda. (default: False)'
  type: boolean
  inputBinding:
    prefix: --remove
- id: url
  doc: 'Print anaconda urls. (default: False)'
  type: boolean
  inputBinding:
    prefix: --url
- id: channel
  doc: "Channel to check for duplicates (default: 'bioconda')"
  type: string
  inputBinding:
    prefix: --channel
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
- duplicates
