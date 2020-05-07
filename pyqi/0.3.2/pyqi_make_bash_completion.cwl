class: CommandLineTool
id: pyqi_make_bash_completion.cwl
inputs:
- id: command_config_module
  doc: CLI command configuration module [REQUIRED]
  type: string
  inputBinding:
    prefix: --command-config-module
- id: driver_name
  doc: name of the driver script [REQUIRED]
  type: string
  inputBinding:
    prefix: --driver-name
- id: output_fp
  doc: output filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --output-fp
outputs: []
cwlVersion: v1.1
baseCommand:
- pyqi
- make-bash-completion
