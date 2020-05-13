class: CommandLineTool
id: estpost.entropy_infile1.hdf5.cwl
inputs:
- id: in_file_2hdf5
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- estpost.entropy
- infile1.hdf5
