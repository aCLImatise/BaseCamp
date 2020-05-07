class: CommandLineTool
id: bioconda_utils_dag.cwl
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
- id: packages
  doc: "Glob for package[s] to show in DAG. Default is to show all packages. Can be\
    \ specified more than once (default: '*')"
  type: string[]
  inputBinding:
    prefix: --packages
- id: format
  doc: "Set format to print graph. \"gml\" and \"dot\" can be imported into graph\
    \ visualization tools (graphviz, gephi, cytoscape). \"txt\" will print out recipes\
    \ grouped by independent subdags, largest subdag first, each in topologically\
    \ sorted order. Singleton subdags (if not hidden with --hide-singletons) are reported\
    \ as one large group at the end. (default: 'gml')"
  type: string
  inputBinding:
    prefix: --format
- id: hide_singletons
  doc: 'Hide singletons in the printed graph. (default: False)'
  type: boolean
  inputBinding:
    prefix: --hide-singletons
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
- dag
