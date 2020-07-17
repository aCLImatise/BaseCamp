class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mia.cwl
inputs:
- id: supplied_default_matrix
  doc: (if not supplied an default matrix is used)
  type: string
  inputBinding:
    prefix: -s
- id: root_file_name
  doc: <root file name for maln output file(s)> (assembly.maln.iter)
  type: boolean
  inputBinding:
    prefix: -m
- id: filename_use_ignoring
  doc: <filename of list of sequence IDs to use, ignoring all others>
  type: boolean
  inputBinding:
    prefix: -I
- id: r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- mia
