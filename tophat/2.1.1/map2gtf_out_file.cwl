class: CommandLineTool
id: map2gtf_out_file.bam.cwl
inputs:
- id: annotation_tls_t
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: alignments_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_file_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- map2gtf
- out_file.bam
