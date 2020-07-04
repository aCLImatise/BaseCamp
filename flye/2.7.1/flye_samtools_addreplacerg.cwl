class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/flye_samtools_addreplacerg.cwl
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
- id: sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: add_replace_rg
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- flye-samtools
- addreplacerg
