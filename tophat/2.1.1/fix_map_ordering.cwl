class: CommandLineTool
id: ../../../fix_map_ordering.cwl
inputs:
- id: sam_header
  doc: ''
  type: string
  inputBinding:
    prefix: --sam-header
- id: in_sam_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_bam_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_unmapped_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- fix_map_ordering
