class: CommandLineTool
id: generate_chrom_lens.py.cwl
inputs:
- id: input_genome
  doc: Input FASTA genome containing the genome sequences.
  type: string
  inputBinding:
    prefix: --input_genome
- id: output
  doc: The output directory where the genes sequences are written. Default is '.'.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- generate_chrom_lens.py
