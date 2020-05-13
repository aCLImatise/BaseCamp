class: CommandLineTool
id: generate_exons.py.cwl
inputs:
- id: input_exons
  doc: Input file with exons positions.
  type: string
  inputBinding:
    prefix: --input_exons
- id: input_genome
  doc: Input FASTA genome containing the genome sequences.
  type: string
  inputBinding:
    prefix: --input_genome
- id: output
  doc: The output directory where the exons sequences are written. Default is '.'.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- generate_exons.py
