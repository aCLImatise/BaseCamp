class: CommandLineTool
id: TdrMappingScripts.pl.cwl
inputs:
- id: in_reference_trna_dot_fa
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
- TdrMappingScripts.pl
