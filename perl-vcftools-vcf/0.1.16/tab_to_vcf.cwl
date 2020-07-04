class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tab_to_vcf.cwl
inputs:
- id: id
  doc: The column ID.
  type: string
  inputBinding:
    prefix: --id
- id: ref
  doc: The reference sequence (optional).
  type: string
  inputBinding:
    prefix: --ref
outputs: []
cwlVersion: v1.1
baseCommand:
- tab-to-vcf
