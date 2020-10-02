class: CommandLineTool
id: fix_map_ordering.cwl
inputs:
- id: in_sam_header
  doc: ''
  type: File
  inputBinding:
    prefix: --sam-header
- id: in_in_sam_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_bam_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_out_unmapped_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fix_map_ordering
