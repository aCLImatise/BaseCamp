class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/flye_samtools_bedcov.cwl
inputs:
- id: reference
  doc: Reference sequence FASTA FILE [null]
  type: File
  inputBinding:
    prefix: --reference
- id: sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bed_cov
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_one_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- flye-samtools
- bedcov
