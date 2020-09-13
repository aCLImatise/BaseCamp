class: CommandLineTool
id: ../../../get_gff_info_gtf.cwl
inputs:
- id: in_verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_gene_id
  doc: "GFF attribute to use for the GTF *gene_id* attribute\n[default: gene_id]"
  type: string
  inputBinding:
    prefix: --gene-id
- id: in_gff_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_gtf_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- get-gff-info
- gtf
