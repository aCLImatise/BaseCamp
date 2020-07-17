class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/common_errors_from_bam_ref_fasta.cwl
inputs:
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: common_errors_from_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ref_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- common_errors_from_bam
- ref_fasta
