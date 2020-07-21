class: CommandLineTool
id: ../../../bam_count_reads.py_bam.cwl
inputs:
- id: a
  doc: ''
  type: long
  inputBinding:
    prefix: -a
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: z
  doc: ''
  type: string
  inputBinding:
    prefix: -z
- id: bam_count_reads_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bam_count_reads.py
- bam
