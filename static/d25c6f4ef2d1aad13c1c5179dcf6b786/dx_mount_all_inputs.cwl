class: CommandLineTool
id: dx_mount_all_inputs.cwl
inputs:
- id: except
  doc: Do not mount the input with this name. (May be used multiple times.)
  type: string
  inputBinding:
    prefix: --except
outputs: []
cwlVersion: v1.1
baseCommand:
- dx-mount-all-inputs
