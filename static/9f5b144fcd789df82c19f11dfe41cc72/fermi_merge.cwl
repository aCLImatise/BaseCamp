class: CommandLineTool
id: fermi_merge.cwl
inputs:
- id: f
  doc: force to overwrite the output file (effective with -o)
  type: boolean
  inputBinding:
    prefix: -f
- id: o
  doc: output file name [null]
  type: File
  inputBinding:
    prefix: -o
- id: t
  doc: number of threads to use
  type: long
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- merge
