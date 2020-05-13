class: CommandLineTool
id: seeker.pl.cwl
inputs:
- id: i
  doc: ', none         - Input file (can be multiple, each with own flag)'
  type: boolean
  inputBinding:
    prefix: -i
- id: output
  doc: '- Output file name (default StrainSeeker_output)'
  type: boolean
  inputBinding:
    prefix: --output
- id: dir
  doc: '- Path to database directory'
  type: boolean
  inputBinding:
    prefix: --dir
- id: verbose
  doc: '- Print out more of the working process'
  type: boolean
  inputBinding:
    prefix: -verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- seeker.pl
