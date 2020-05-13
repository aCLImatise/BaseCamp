class: CommandLineTool
id: get_gff_info_gtf_OPTIONS_GFF_FILE_GTF_FILE.cwl
inputs:
- id: gene_id
  doc: 'GFF attribute to use for the GTF *gene_id* attribute [default: gene_id]'
  type: string
  inputBinding:
    prefix: --gene-id
outputs: []
cwlVersion: v1.1
baseCommand:
- get-gff-info
- gtf
- OPTIONS
- GFF_FILE
- GTF_FILE
