class: CommandLineTool
id: map2gtf_annotation.tlst_alignments.bam.cwl
inputs:
- id: out_file_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- map2gtf
- annotation.tlst
- alignments.bam
