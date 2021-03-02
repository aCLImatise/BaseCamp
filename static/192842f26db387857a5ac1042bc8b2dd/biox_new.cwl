class: CommandLineTool
id: biox_new.cwl
inputs:
- id: in_plugins
  doc: Load aplication plugins [Multiple; Split by ","]
  type: boolean?
  inputBinding:
    prefix: --plugins
- id: in_plugins_opts
  doc: Options for application plugins [Key-Value]
  type: boolean?
  inputBinding:
    prefix: --plugins_opts
- id: in_no_configs
  doc: "HPC::Runner not to load any\nconfigs [Flag]"
  type: string?
  inputBinding:
    prefix: --no_configs
- id: in_config
  doc: Override the search paths and supply your own
  type: boolean?
  inputBinding:
    prefix: --config
- id: in_search
  doc: "Search for config files in ~/.config.(ext) and in\nyour current working directory.\
    \ [Flag]"
  type: boolean?
  inputBinding:
    prefix: --search
- id: in_search_path
  doc: "Enable a search path for configs. Default is the\nhome dir and your cwd. [Multiple]"
  type: boolean?
  inputBinding:
    prefix: --search_path
- id: in_rules
  doc: Add rules [Multiple; Split by ","]
  type: boolean?
  inputBinding:
    prefix: --rules
- id: in_stdout
  doc: Write workflows to STDOUT [Flag]
  type: boolean?
  inputBinding:
    prefix: --stdout
- id: in_outfile
  doc: Write your workflow to a file
  type: boolean?
  inputBinding:
    prefix: --outfile
- id: in_workflow
  doc: Supply a workflow [Required]
  type: boolean?
  inputBinding:
    prefix: --workflow
- id: in_config_dot
  doc: --config_base         Basename of config files [Default:".bioxworkflow"]
  type: string
  inputBinding:
    position: 0
- id: in_help
  doc: Prints this usage information
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- biox
- new
