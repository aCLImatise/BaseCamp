class: CommandLineTool
id: bioconda_utils_update_pinning.cwl
inputs:
- id: in_packages
  doc: "Glob for package[s] to update, as needed due to a\nchange in pinnings (default:\
    \ '*')"
  type: string[]
  inputBinding:
    prefix: --packages
- id: in_skip_additional_channels
  doc: "[SKIP_ADDITIONAL_CHANNELS [SKIP_ADDITIONAL_CHANNELS ...]]\nSkip updating/bumping\
    \ packges that are already built\nwith compatible pinnings in one of the given\
    \ channels\nin addition to those listed in 'config'. (default: -)"
  type: boolean?
  inputBinding:
    prefix: --skip-additional-channels
- id: in_skip_variants
  doc: "[SKIP_VARIANTS [SKIP_VARIANTS ...]]\nSkip packages that use one of the given\
    \ variant keys.\n(default: -)"
  type: boolean?
  inputBinding:
    prefix: --skip-variants
- id: in_max_bumps
  doc: "Maximum number of recipes that will be updated.\n(default: -)"
  type: long?
  inputBinding:
    prefix: --max-bumps
- id: in_no_leaves
  doc: "Only update recipes with dependent packages. (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --no-leaves
- id: in_cache
  doc: "To speed up debugging, use repodata cached locally in\nthe provided filename.\
    \ If the file does not exist, it\nwill be created the first time. (default: -)"
  type: File?
  inputBinding:
    prefix: --cache
- id: in_pdb
  doc: 'Drop into debugger on exception (default: False)'
  type: boolean?
  inputBinding:
    prefix: --pdb
- id: in_threads
  doc: 'Limit maximum number of processes used. (default: 16)'
  type: long?
  inputBinding:
    prefix: --threads
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
- id: in_recipe_folder
  doc: "Path to folder containing recipes (default: recipes/)\n(default: -)"
  type: string
  inputBinding:
    position: 0
- id: in_config
  doc: "Path to Bioconda config (default: config.yml)\n(default: -)"
  type: string
  inputBinding:
    position: 1
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
- update-pinning
