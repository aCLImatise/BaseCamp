class: CommandLineTool
id: bioconda_utils_update_pinning.cwl
inputs:
- id: recipe_folder
  doc: 'Path to folder containing recipes (default: recipes/) (default: -)'
  type: string
  inputBinding:
    position: 0
- id: config
  doc: 'Path to Bioconda config (default: config.yml) (default: -)'
  type: string
  inputBinding:
    position: 1
- id: bump_only_python
  doc: 'Bump package build numbers even if the only applicable pinning change is the
    python version. This is generally required unless you plan on building everything.
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --bump-only-python
- id: cache
  doc: 'To speed up debugging, use repodata cached locally in the provided filename.
    If the file does not exist, it will be created the first time. (default: -)'
  type: string
  inputBinding:
    prefix: --cache
- id: pdb
  doc: 'Drop into debugger on exception (default: False)'
  type: boolean
  inputBinding:
    prefix: --pdb
- id: threads
  doc: 'Limit maximum number of processes used. (default: 16)'
  type: string
  inputBinding:
    prefix: --threads
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
- update-pinning
