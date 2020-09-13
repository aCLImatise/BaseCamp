class: CommandLineTool
id: ../../../tripaille.cwl
inputs:
- id: in_verbose
  doc: Enables verbose mode.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_instance
  doc: "Name of instance in /root/.tripaille.yml. This\nparameter can also be set\
    \ via the environment variable\nTRIPAILLE_INSTANCE  [default: __default; required]"
  type: string
  inputBinding:
    prefix: --instance
- id: in_path
  doc: config file path
  type: File
  inputBinding:
    prefix: --path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tripaille
