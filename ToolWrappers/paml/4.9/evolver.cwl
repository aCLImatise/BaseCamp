class: CommandLineTool
id: evolver.cwl
inputs:
- id: in_evolver
  doc: evolver option# MyDataFile
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- evolver
