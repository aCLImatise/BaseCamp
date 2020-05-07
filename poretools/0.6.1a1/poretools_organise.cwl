class: CommandLineTool
id: poretools_organise.cwl
inputs:
- id: files
  doc: The input FAST5 files.
  type: File
  inputBinding:
    position: 0
- id: string
  doc: The destination directory.
  type: string
  inputBinding:
    position: 1
- id: quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: copy
  doc: Make a copy of files instead of moving
  type: boolean
  inputBinding:
    prefix: --copy
outputs: []
cwlVersion: v1.1
baseCommand:
- poretools
- organise
