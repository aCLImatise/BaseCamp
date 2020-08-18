class: CommandLineTool
id: ../../../fermi_merge.cwl
inputs:
- id: force_overwrite_file
  doc: force to overwrite the output file (effective with -o)
  type: boolean
  inputBinding:
    prefix: -f
- id: output_file_name
  doc: output file name [null]
  type: File
  inputBinding:
    prefix: -o
- id: number_threads_use
  doc: number of threads to use
  type: long
  inputBinding:
    prefix: -t
- id: in_zero_dot_bwt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_one_dot_bwt
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- merge
