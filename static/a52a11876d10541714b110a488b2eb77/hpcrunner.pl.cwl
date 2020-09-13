class: CommandLineTool
id: ../../../hpcrunner.pl.cwl
inputs:
- id: in_plugins_opts
  doc: Options for application plugins [Key-Value]
  type: boolean
  inputBinding:
    prefix: --plugins_opts
- id: in_plugins
  doc: Load aplication plugins [Multiple; Split by ","]
  type: boolean
  inputBinding:
    prefix: --plugins
- id: in_config_base
  doc: Basename of config files [Default:".hpcrunner"]
  type: boolean
  inputBinding:
    prefix: --config_base
- id: in_search
  doc: "Search for config files in ~/.config.(ext) and in\nyour current working directory.\
    \ [Flag]"
  type: boolean
  inputBinding:
    prefix: --search
- id: in_config
  doc: Override the search paths and supply your own
  type: boolean
  inputBinding:
    prefix: --config
- id: in_no_configs
  doc: "--no_configs tells HPC::Runner not to load any\nconfigs [Flag]"
  type: boolean
  inputBinding:
    prefix: --no_configs
- id: in_project
  doc: "Give your jobnames an additional project name. #HPC\njobname=gzip will be\
    \ submitted as 001_project_gzip"
  type: boolean
  inputBinding:
    prefix: --project
- id: in_no_log_json
  doc: "Opt out of writing the tar archive of JSON stats.\nThis may be desirable for\
    \ especially large\nworkflows. [Flag]"
  type: boolean
  inputBinding:
    prefix: --no_log_json
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hpcrunner.pl
