class: CommandLineTool
id: traitar_remove_out_f.cwl
inputs:
- id: in_keep
  doc: ''
  type: boolean
  inputBinding:
    prefix: --keep
- id: in_trait_ar
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_remove
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_archive_f
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_phenotypes
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_out_f
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- traitar
- remove
- out_f
