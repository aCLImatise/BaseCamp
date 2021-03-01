class: CommandLineTool
id: pyqi_make_bash_completion.cwl
inputs:
- id: in_command_config_module
  doc: CLI command configuration module [REQUIRED]
  type: string?
  inputBinding:
    prefix: --command-config-module
- id: in_driver_name
  doc: name of the driver script [REQUIRED]
  type: string?
  inputBinding:
    prefix: --driver-name
- id: in_output_fp
  doc: "output filepath [REQUIRED]\n"
  type: File?
  inputBinding:
    prefix: --output-fp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fp
  doc: "output filepath [REQUIRED]\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fp)
hints: []
cwlVersion: v1.1
baseCommand:
- pyqi
- make-bash-completion
