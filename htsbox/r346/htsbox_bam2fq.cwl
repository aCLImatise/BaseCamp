class: CommandLineTool
id: htsbox_bam2fq.cwl
inputs:
- id: bam2fq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: a
  doc: append /1 and /2 to the read name
  type: boolean
  inputBinding:
    prefix: -a
- id: o
  doc: output quality in the OQ tag if present
  type: boolean
  inputBinding:
    prefix: -O
- id: t
  doc: copy RG, BC and QT tags to the FASTQ header line
  type: boolean
  inputBinding:
    prefix: -t
- id: s
  doc: write singleton reads to FILE [assume single-end]
  type: File
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- htsbox
- bam2fq
