class: CommandLineTool
id: sliding_read.py.cwl
inputs:
- id: input
  doc: The first FASTQ input file containing the short reads which are interleaved.
  type: string
  inputBinding:
    prefix: --input
- id: window
  doc: The size of window.
  type: string
  inputBinding:
    prefix: --window
- id: step
  doc: The size of window.
  type: string
  inputBinding:
    prefix: --step
- id: output
  doc: The output FASTQ file.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- sliding-read.py
