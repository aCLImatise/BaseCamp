class: CommandLineTool
id: get_gff_info_gtf.cwl
inputs:
- id: in_verbose
  doc: "GFF attribute to use for the GTF *gene_id* attribute\n[default: gene_id]"
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_gff_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_gtf_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- get-gff-info
- gtf
