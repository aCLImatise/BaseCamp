class: CommandLineTool
id: poretools_times.cwl
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
- id: utc
  doc: Show timestamps in UTC.
  type: boolean
  inputBinding:
    prefix: --utc
outputs: []
cwlVersion: v1.1
baseCommand:
- poretools
- times
