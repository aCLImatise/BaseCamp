class: CommandLineTool
id: biox.cwl
inputs:
- id: plugins
  doc: Load aplication plugins [Multiple; Split by ","]
  type: boolean
  inputBinding:
    prefix: --plugins
- id: plugins_opts
  doc: Options for application plugins [Key-Value]
  type: boolean
  inputBinding:
    prefix: --plugins_opts
- id: no_configs
  doc: --no_configs tells HPC::Runner not to load any configs [Flag]
  type: boolean
  inputBinding:
    prefix: --no_configs
- id: search_path
  doc: Enable a search path for configs. Default is the home dir and your cwd. [Multiple]
  type: boolean
  inputBinding:
    prefix: --search_path
- id: config
  doc: Override the search paths and supply your own config.
  type: boolean
  inputBinding:
    prefix: --config
- id: search
  doc: Search for config files in ~/.config.(ext) and in your current working directory.
    [Flag]
  type: boolean
  inputBinding:
    prefix: --search
- id: config_base
  doc: Basename of config files [Default:".bioxworkflow"]
  type: boolean
  inputBinding:
    prefix: --config_base
outputs: []
cwlVersion: v1.1
baseCommand:
- biox
