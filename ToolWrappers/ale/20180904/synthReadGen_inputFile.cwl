class: CommandLineTool
id: synthReadGen_inputFile.cwl
inputs:
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- synthReadGen
- inputFile
