class: CommandLineTool
id: poretools_combine.cwl
inputs:
- id: files
  doc: The input FAST5 files.
  type: File
  inputBinding:
    position: 0
- id: quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: o
  doc: The name of the output TAR archive for the set of FAST5 files.
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- poretools
- combine
