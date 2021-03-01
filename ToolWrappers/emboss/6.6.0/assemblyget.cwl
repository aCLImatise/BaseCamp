class: CommandLineTool
id: assemblyget.cwl
inputs:
- id: in_assembly
  doc: ': enter assembly value: Error: Unable to get reply from user - end of standard
    input'
  type: boolean?
  inputBinding:
    prefix: -assembly
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- assemblyget
