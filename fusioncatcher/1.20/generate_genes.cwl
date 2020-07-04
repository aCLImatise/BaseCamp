class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/generate_genes.py.cwl
inputs:
- id: input_genes
  doc: Input file with genes positions.
  type: string
  inputBinding:
    prefix: --input_genes
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
- generate_genes.py
