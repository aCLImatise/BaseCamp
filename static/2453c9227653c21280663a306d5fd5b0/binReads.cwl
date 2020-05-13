class: CommandLineTool
id: binReads.pl.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- binReads.pl
