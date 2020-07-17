class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/map2gtf.cwl
inputs:
- id: annotation_do_ttl_st
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: alignments_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_file_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- map2gtf
