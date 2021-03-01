class: CommandLineTool
id: dx_mount_all_inputs.cwl
inputs:
- id: in_except
  doc: "Do not mount the input with this name. (May be used\nmultiple times.)\n"
  type: string?
  inputBinding:
    prefix: --except
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dx-mount-all-inputs
