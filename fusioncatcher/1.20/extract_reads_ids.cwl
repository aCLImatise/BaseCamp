class: CommandLineTool
id: extract_reads_ids.py.cwl
inputs:
- id: input
  doc: The input file in FASTQ format.
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output text file containinf the reads ids.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- extract_reads_ids.py
