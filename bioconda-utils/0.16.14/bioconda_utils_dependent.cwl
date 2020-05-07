class: CommandLineTool
id: bioconda_utils_dependent.cwl
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
- id: restrict
  doc: 'Restrict --dependencies to packages in `recipe_folder`. Has no effect if --reverse-
    dependencies, which always looks just in the recipe dir. (default: False)'
  type: boolean
  inputBinding:
    prefix: --restrict
- id: dependencies
  doc: 'Return recipes in `recipe_folder` in the dependency chain for the packages
    listed here. Answers the question "what does PACKAGE need?" (default: -)'
  type: string[]
  inputBinding:
    prefix: --dependencies
- id: reverse_dependencies
  doc: 'Return recipes in `recipe_folder` in the reverse dependency chain for packages
    listed here. Answers the question "what depends on PACKAGE?" (default: -)'
  type: string[]
  inputBinding:
    prefix: --reverse-dependencies
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
- dependent
