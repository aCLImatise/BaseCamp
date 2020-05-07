class: CommandLineTool
id: vcf2db.py.cwl
inputs:
- id: expand
  doc: sample columns to expand into their own tables
  type: string
  inputBinding:
    prefix: --expand
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf2db.py
