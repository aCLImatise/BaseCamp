class: CommandLineTool
id: enrichm_Annotation.cwl
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
hints: []
cwlVersion: v1.1
baseCommand:
- enrichm
- Annotation
