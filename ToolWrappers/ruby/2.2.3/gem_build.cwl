class: CommandLineTool
id: gem_build.cwl
inputs:
- id: in_force
  doc: skip validation of the spec
  type: boolean?
  inputBinding:
    prefix: --force
- id: in__verbose_set
  doc: ', --[no-]verbose               Set the verbose level of output'
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_quiet
  doc: Silence commands
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_config_file
  doc: Use this config file instead of default
  type: File?
  inputBinding:
    prefix: --config-file
- id: in_backtrace
  doc: Show stack backtrace on errors
  type: boolean?
  inputBinding:
    prefix: --backtrace
- id: in_debug
  doc: Turn on Ruby debugging
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_gem_spec_file
  doc: gemspec file name to build a gem for
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
- gem
- build
