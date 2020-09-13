class: CommandLineTool
id: ../../../biox_workflow.pl.cwl
inputs:
- id: in_plugins
  doc: Load aplication plugins [Multiple; Split by ","]
  type: boolean
  inputBinding:
    prefix: --plugins
- id: in_plugins_opts
  doc: Options for application plugins [Key-Value]
  type: boolean
  inputBinding:
    prefix: --plugins_opts
- id: in_search
  doc: "Search for config files in ~/.config.(ext) and in\nyour current working directory.\
    \ [Flag]"
  type: boolean
  inputBinding:
    prefix: --search
- id: in_config_base
  doc: Basename of config files [Default:".bioxworkflow"]
  type: boolean
  inputBinding:
    prefix: --config_base
- id: in_search_path
  doc: "Enable a search path for configs. Default is the\nhome dir and your cwd. [Multiple]"
  type: boolean
  inputBinding:
    prefix: --search_path
- id: in_no_configs
  doc: "--no_configs tells HPC::Runner not to load any\nconfigs [Flag]"
  type: boolean
  inputBinding:
    prefix: --no_configs
- id: in_config
  doc: Override the search paths and supply your own
  type: boolean
  inputBinding:
    prefix: --config
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- biox-workflow.pl
