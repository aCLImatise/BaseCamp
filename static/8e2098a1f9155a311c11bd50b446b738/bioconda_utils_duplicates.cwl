class: CommandLineTool
id: bioconda_utils_duplicates.cwl
inputs:
- id: in_strict_version
  doc: 'Require version to strictly match. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --strict-version
- id: in_strict_build
  doc: "Require version and build to strictly match. (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --strict-build
- id: in_dry_run
  doc: 'Only print removal plan. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --dryrun
- id: in_remove
  doc: 'Remove packages from anaconda. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --remove
- id: in_url
  doc: 'Print anaconda urls. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --url
- id: in_channel
  doc: "Channel to check for duplicates (default: 'bioconda')"
  type: string?
  inputBinding:
    prefix: --channel
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
- id: in_detect_packages_bioconda
  doc: Detect packages in bioconda that have duplicates in the other defined
  type: string
  inputBinding:
    position: 0
- id: in_channels_dot
  doc: 'positional arguments:'
  type: string
  inputBinding:
    position: 1
- id: in_path_yaml_file
  doc: Path to yaml file specifying the configuration
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bioconda-utils:0.17.4--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- bioconda-utils
- duplicates
