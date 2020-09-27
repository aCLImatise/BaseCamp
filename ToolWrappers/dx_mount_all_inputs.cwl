class: CommandLineTool
id: dx_mount_all_inputs.cwl
inputs:
- id: in_except
  doc: "Do not mount the input with this name. (May be used\nmultiple times.)\n"
  type: string
  inputBinding:
    prefix: --except
- id: in_one_one_slash_l_dot_vcf
  doc: This allows using shell globbing (FOO/*/*.vcf) to get all the files in the
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dx-mount-all-inputs
