class: CommandLineTool
id: estpost.entropy_infile2.hdf5.cwl
inputs:
- id: in_file_1hdf5
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file_2hdf5
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- estpost.entropy
- infile2.hdf5
