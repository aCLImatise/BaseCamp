class: CommandLineTool
id: bioconda_utils_bioconductor_skeleton.cwl
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
- id: package
  doc: Bioconductor package name. This is case-sensitive, and must match the package
    name on the Bioconductor site. If "update-all-packages" is specified, then all
    packages in a given bioconductor release will be created/updated (--force is then
    implied).
  type: string
  inputBinding:
    position: 2
- id: versioned
  doc: 'If specified, recipe will be created in RECIPES/<package>/<version> (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --versioned
- id: force
  doc: 'Overwrite the contents of an existing recipe. If --recursive is also used,
    then overwrite *all* recipes created. (default: False)'
  type: boolean
  inputBinding:
    prefix: --force
- id: pkg_version
  doc: 'Package version to use instead of the current one (default: -)'
  type: string
  inputBinding:
    prefix: --pkg-version
- id: bioc_version
  doc: 'Version of Bioconductor to target. If not specified, then automatically finds
    the latest version of Bioconductor with the specified version in --pkg- version,
    or if --pkg-version not specified, then finds the the latest package version in
    the latest Bioconductor version (default: -)'
  type: string
  inputBinding:
    prefix: --bioc-version
- id: recursive
  doc: 'Creates the recipes for all Bioconductor and CRAN dependencies of the specified
    package. (default: False)'
  type: boolean
  inputBinding:
    prefix: --recursive
- id: skip_if_in_channels
  doc: "[SKIP_IF_IN_CHANNELS [SKIP_IF_IN_CHANNELS ...]] When --recursive is used,\
    \ it will build *all* recipes. Use this argument to skip recursive building for\
    \ packages that already exist in the packages listed here. (default: ['conda-forge',\
    \ 'bioconda'])"
  type: boolean
  inputBinding:
    prefix: --skip-if-in-channels
- id: loglevel
  doc: "Set logging level (debug, info, warning, error, critical) (default: 'debug')"
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
- bioconductor-skeleton
