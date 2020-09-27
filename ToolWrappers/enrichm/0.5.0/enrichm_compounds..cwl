class: CommandLineTool
id: enrichm_compounds..cwl
inputs:
- id: in_enrich_m
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
- enrichm
- compounds.
