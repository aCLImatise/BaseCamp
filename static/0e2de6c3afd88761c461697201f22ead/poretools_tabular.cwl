class: CommandLineTool
id: poretools_tabular.cwl
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
- id: type
  doc: Which type of FASTA entries should be reported? Def.=all
  type: string
  inputBinding:
    prefix: --type
outputs: []
cwlVersion: v1.1
baseCommand:
- poretools
- tabular
