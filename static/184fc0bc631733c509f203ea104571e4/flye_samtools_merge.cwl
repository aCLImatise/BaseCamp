class: CommandLineTool
id: ../../../flye_samtools_merge.cwl
inputs:
- id: reference
  doc: Reference sequence FASTA FILE [null]
  type: File
  inputBinding:
    prefix: --reference
- id: threads
  doc: Number of additional threads to use [0]
  type: long
  inputBinding:
    prefix: --threads
- id: n_url_f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -nurlf
- id: h
  doc: ''
  type: string
  inputBinding:
    prefix: -h
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: merge
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_one_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: inn_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- flye-samtools
- merge
