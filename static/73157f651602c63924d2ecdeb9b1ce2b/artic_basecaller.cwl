class: CommandLineTool
id: ../../../artic_basecaller.cwl
inputs:
- id: quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: directory
  doc: Directory of FAST5 files.
  type: Directory
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- artic
- basecaller
