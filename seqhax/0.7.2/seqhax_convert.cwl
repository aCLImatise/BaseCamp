class: CommandLineTool
id: seqhax_convert.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: a
  doc: Output FASTA.
  type: boolean
  inputBinding:
    prefix: -a
- id: q
  doc: Output FASTQ (adding qualities).
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- seqhax
- convert
