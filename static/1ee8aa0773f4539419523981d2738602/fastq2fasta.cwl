class: CommandLineTool
id: fastq2fasta.py.cwl
inputs:
- id: input
  doc: The input file in FASTQ format (Solexa).
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: The output FASTA file.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq2fasta.py
