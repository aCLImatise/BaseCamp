class: CommandLineTool
id: map2gtf_annotation.tlst_out_file.bam.cwl
inputs:
- id: alignments_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_file_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- map2gtf
- annotation.tlst
- out_file.bam
