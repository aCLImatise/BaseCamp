#!/usr/bin/env cwl-runner

baseCommand:
- hpcrunner.pl
class: CommandLineTool
cwlVersion: v1.0
id: hpcrunner.pl
inputs:
- doc: Load aplication plugins [Multiple; Split by ","]
  id: plugins
  inputBinding:
    prefix: --plugins
  type: boolean
- doc: Options for application plugins [Key-Value]
  id: plugins_opts
  inputBinding:
    prefix: --plugins_opts
  type: boolean
- doc: --no_configs tells HPC::Runner not to load any configs [Flag]
  id: no_configs
  inputBinding:
    prefix: --no_configs
  type: boolean
- doc: Override the search paths and supply your own config.
  id: config
  inputBinding:
    prefix: --config
  type: boolean
- doc: Search for config files in ~/.config.(ext) and in your current working directory.
    [Flag]
  id: search
  inputBinding:
    prefix: --search
  type: boolean
- doc: Enable a search path for configs. Default is the home dir and your cwd. [Multiple]
  id: search_path
  inputBinding:
    prefix: --search_path
  type: boolean
- doc: Basename of config files [Default:".hpcrunner"]
  id: config_base
  inputBinding:
    prefix: --config_base
  type: boolean
- doc: 'Give your jobnames an additional project name. #HPC jobname=gzip will be submitted
    as 001_project_gzip'
  id: project
  inputBinding:
    prefix: --project
  type: boolean
- doc: Opt out of writing the tar archive of JSON stats. This may be desirable for
    especially large workflows. [Flag]
  id: no_log_json
  inputBinding:
    prefix: --no_log_json
  type: boolean
