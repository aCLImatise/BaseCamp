class: CommandLineTool
id: bioconda_utils_bioconductor_skeleton.cwl
inputs:
- id: in_versioned
  doc: "If specified, recipe will be created in\nRECIPES/<package>/<version> (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --versioned
- id: in_force
  doc: Overwrite the contents of an existing recipe. If
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_recursive
  doc: also used, then overwrite *all* recipes
  type: string?
  inputBinding:
    prefix: --recursive
- id: in_pkg_version
  doc: "Package version to use instead of the current one\n(default: -)"
  type: string?
  inputBinding:
    prefix: --pkg-version
- id: in_bioc_version
  doc: "Version of Bioconductor to target. If not specified,\nthen automatically finds\
    \ the latest version of\nBioconductor with the specified version in --pkg-\nversion,\
    \ or if --pkg-version not specified, then finds\nthe the latest package version\
    \ in the latest\nBioconductor version (default: -)"
  type: string?
  inputBinding:
    prefix: --bioc-version
- id: in_skip_if_in_channels
  doc: "[SKIP_IF_IN_CHANNELS [SKIP_IF_IN_CHANNELS ...]]\nWhen --recursive is used,\
    \ it will build *all* recipes.\nUse this argument to skip recursive building for\n\
    packages that already exist in the packages listed\nhere. (default: ['conda-forge',\
    \ 'bioconda'])"
  type: boolean?
  inputBinding:
    prefix: --skip-if-in-channels
- id: in_loglevel
  doc: "Set logging level (debug, info, warning, error,\ncritical) (default: 'debug')"
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
- id: in_package
  doc: "Bioconductor package name. This is case-sensitive, and\nmust match the package\
    \ name on the Bioconductor site.\nIf \"update-all-packages\" is specified, then\
    \ all\npackages in a given bioconductor release will be\ncreated/updated (--force\
    \ is then implied)."
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bioconda-utils:0.17.5--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- bioconda-utils
- bioconductor-skeleton
