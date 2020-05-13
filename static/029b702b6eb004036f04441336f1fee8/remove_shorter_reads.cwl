class: CommandLineTool
id: remove_shorter_reads.py.cwl
inputs:
- id: input
  doc: The input file (in FASTQ format) containing the short reads to be processed.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output FASTQ file containing the short reads where the reads which are
    shorter then a given threshold are removed.
  type: string
  inputBinding:
    prefix: --output
- id: threshold
  doc: If if this is larger than zero then all the short reads strictly shorter than
    this threshold are removed. Default is 0.
  type: string
  inputBinding:
    prefix: --threshold
outputs: []
cwlVersion: v1.1
baseCommand:
- remove_shorter_reads.py
