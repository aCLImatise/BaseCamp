class: CommandLineTool
id: unshuffle.py.cwl
inputs:
- id: input
  doc: The first FASTQ input file containing the short reads which are interleaved.
  type: string
  inputBinding:
    prefix: --input
- id: forward
  doc: The output FASTQ file where the forward short reads from the input FASTQ.
  type: string
  inputBinding:
    prefix: --forward
- id: reverse
  doc: The output FASTQ file where the reverse short reads from the input FASTQ.
  type: string
  inputBinding:
    prefix: --reverse
outputs: []
cwlVersion: v1.1
baseCommand:
- unshuffle.py
