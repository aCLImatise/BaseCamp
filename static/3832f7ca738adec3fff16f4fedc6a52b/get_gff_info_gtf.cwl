class: CommandLineTool
id: ../../../get_gff_info_gtf.cwl
inputs:
- id: gene_id
  doc: 'GFF attribute to use for the GTF *gene_id* attribute [default: gene_id]'
  type: string
  inputBinding:
    prefix: --gene-id
- id: gff_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gtf_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- get-gff-info
- gtf
