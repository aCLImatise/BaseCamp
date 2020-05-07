class: CommandLineTool
id: shuffle.py.cwl
inputs:
- id: input_1
  doc: The first FASTQ input file containing the short reads to be interleaved.
  type: string
  inputBinding:
    prefix: --input_1
- id: input_2
  doc: The second FASTQ input file containing the short reads to be interleaved.
  type: string
  inputBinding:
    prefix: --input_2
- id: output
  doc: The output FASTQ file where the short reads from the two input FASTQ files
    are interleaved.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- shuffle.py
