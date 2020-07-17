class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/biox_new.cwl
inputs:
- id: plugins_opts
  doc: Options for application plugins [Key-Value]
  type: boolean
  inputBinding:
    prefix: --plugins_opts
- id: plugins
  doc: Load aplication plugins [Multiple; Split by ","]
  type: boolean
  inputBinding:
    prefix: --plugins
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
- id: config_base
  doc: Basename of config files [Default:".bioxworkflow"]
  type: boolean
  inputBinding:
    prefix: --config_base
- id: rules
  doc: Add rules [Multiple; Split by ","]
  type: boolean
  inputBinding:
    prefix: --rules
- id: outfile
  doc: Write your workflow to a file
  type: boolean
  inputBinding:
    prefix: --outfile
- id: stdout
  doc: Write workflows to STDOUT [Flag]
  type: boolean
  inputBinding:
    prefix: --stdout
- id: workflow
  doc: Supply a workflow [Required]
  type: boolean
  inputBinding:
    prefix: --workflow
- id: help
  doc: Prints this usage information
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- biox
- new
