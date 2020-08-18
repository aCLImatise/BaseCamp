class: CommandLineTool
id: ../../../flye_samtools_fasta.cwl
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
- id: i_one_four_i_eight
  doc: the first 14 characters are index 1, the next 8 characters are index 2
  type: string
  inputBinding:
    position: 0
- id: n_eight_i_one_four
  doc: ignore the first 8 characters, and use the next 14 characters for index 1
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- flye-samtools
- fasta
